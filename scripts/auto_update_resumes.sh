#!/bin/bash

PROJECT_DIR="$HOME/projects/hh-applicant-tool"

cd "$PROJECT_DIR"

while true
do
    echo "=== UPDATE RESUMES $(date) ==="

    echo "Default profile"
    docker compose run -u docker -T hh_applicant_tool \
    hh-applicant-tool update-resumes

    echo "Second profile"
    docker compose run -u docker -T hh_applicant_tool \
    hh-applicant-tool --profile-id second update-resumes

    echo "=== SLEEP 4h10m ==="

    sleep 15000
done
