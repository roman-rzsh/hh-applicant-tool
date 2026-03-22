#!/bin/bash
set -euo pipefail

trap 'echo "INTERRUPTED"; docker kill $(docker ps -q --filter "name=hh_applicant_tool") 2>/dev/null; exit 1' SIGINT

echo "=== START APPLY $(date) ==="

# TOP resume 3-6
docker compose run -u docker -T hh_applicant_tool hh-applicant-tool \
-d 2 -vv apply-vacancies \
--search 'go разработчик OR golang разработчик OR go developer OR golang developer' \
--search-field name \
--professional-role 96 156 160 \
--experience between3And6 \
--salary 250000 \
--area 113 \
--period 14 \
--per-page 33 \
--total-pages 5 \
--order-by publication_time \
--force-message \
--letter letter.txt \
--resume-id 68cca835ff1023f0050039ed1f6d42676d5151
# --schedule remote

# TOP resume 6+
docker compose run -u docker -T hh_applicant_tool hh-applicant-tool \
-d 2 -vv apply-vacancies \
--search 'go разработчик OR golang разработчик OR go developer OR golang developer' \
--search-field name \
--professional-role 96 156 160 \
--experience moreThan6 \
--salary 250000 \
--area 113 \
--period 20 \
--per-page 33 \
--total-pages 5 \
--order-by publication_time \
--force-message \
--letter letter.txt \
--resume-id 68cca835ff1023f0050039ed1f6d42676d5151
# --schedule remote

# English resume
docker compose run -u docker -T hh_applicant_tool hh-applicant-tool \
-d 2 -vv apply-vacancies \
--search 'go разработчик OR golang разработчик OR go developer OR golang developer' \
--search-field name \
--professional-role 96 156 160 \
--area 5 40 9 16 28 48 97 1001 \
--experience between3And6 \
--period 20 \
--per-page 33 \
--total-pages 5 \
--order-by publication_time \
--force-message \
--letter letter-eng.txt \
--resume-id 19fc98a7ff103625e50039ed1f526171704c65
# --schedule remote

# Middle resume
docker compose run -u docker -T hh_applicant_tool hh-applicant-tool \
-d 2 -vv --profile-id second apply-vacancies \
--search 'go разработчик OR golang разработчик OR go developer OR golang developer' \
--search-field name \
--professional-role 96 156 160 \
--experience between3And6 \
--salary 250000 \
--period 20 \
--per-page 33 \
--total-pages 5 \
--order-by publication_time \
--force-message \
--letter letter-mid.txt \
--resume-id 87838141ff103495b80039ed1f4c5137315263
# --schedule remote

echo "=== APPLY FINISHED $(date) ==="
