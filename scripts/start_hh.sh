#!/bin/bash

set -e

trap 'echo "INTERRUPTED"; docker kill $(docker ps -q --filter "name=hh_applicant_tool") 2>/dev/null; exit 1' SIGINT

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$PROJECT_DIR"

echo "===== HH BOT START ====="
date

echo "Project dir: $PROJECT_DIR"

echo "1. Поднимаем резюме..."
docker compose run -u docker -T hh_applicant_tool hh-applicant-tool update-resumes

echo "2. Запускаем автоподъём..."

nohup "$SCRIPT_DIR/auto_update_resumes.sh" \
> "$PROJECT_DIR/auto_update.log" 2>&1 &

echo "3. Запускаем отклики..."

"$SCRIPT_DIR/apply_all.sh"

echo "===== ALL FINISHED ====="
