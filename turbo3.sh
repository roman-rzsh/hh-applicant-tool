hh-applicant-tool -d 2 -vv apply-vacancies \
--search '(Go OR Golang) AND (backend OR microservices OR api OR grpc OR микросервисы OR бэкенд OR разработчик OR developer OR microservices) \
NOT junior NOT intern NOT trainee NOT стажер NOT стажёр NOT студент \
NOT javascript NOT fullstack \
NOT react NOT vue \
NOT 1c NOT bitrix \
NOT тестировщик NOT teacher NOT преподаватель NOT "product manager" NOT "qa automation" NOT "test engineer"  NOT "project manager"\
NOT ansible \
NOT "SMM Manager" NOT "SMM менеджер" NOT "Content Manager" NOT "Контент менеджер" NOT "Creative Manager" NOT "Community Manager" NOT "PR Manager" NOT "2D Artist" NOT "2D Художник" NOT "3D Artist" NOT "Graphic Designer" \
NOT "Tech Lead" NOT "Team Lead Go" NOT "Go Team Lead" NOT "Руководитель бэкенд" NOT "Руководитель команды" NOT "Руководитель группы" NOT "Team Lead Golang" NOT "Golang Team Lead" \
NOT "PHP developer" NOT "Senior PHP developer" NOT "PHP backend developer" NOT "PHP engineer" NOT "PHP разработчик" NOT "PHP backend разработчик" NOT "PHP программист" \
NOT "Python developer" NOT "Senior Python developer" NOT "Python backend developer" NOT "Python engineer" NOT "Python разработчик" NOT "Python backend разработчик" NOT "Python программист" \
NOT "Java developer" NOT "Senior Java developer" NOT "Java backend developer" NOT "Java engineer" NOT "Java разработчик" NOT "Java backend разработчик" NOT "Java программист" \
NOT "C++ developer" NOT "Senior C++ developer" NOT "C++ backend developer" NOT "C++ engineer" NOT "C++ разработчик" NOT "C++ backend разработчик" NOT "C++ программист"' \
--excluded-filter "trainee,intern,junior,student,студент,стажер,стажёр,react,vue,laravel,frontend,fullstack,1c,bitrix,ansible,преподаватель,teacher,тестировщик,wordpress" \
--salary 250000 \
--period 30 \
--per-page 40 \
--max-responses 200 \
--total-pages 5 \
--dry-run
