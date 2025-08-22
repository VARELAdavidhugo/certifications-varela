#!/usr/bin/env bash
set -euo pipefail

mkdir -p LinkedInLearning/{01-Linux,02-DevOps,03-Containers_Cloud,04-Agile_Methods,99-Complements}

# Linux & systèmes
find LinkedInLearning -maxdepth 1 -type f \( -iname '*linux*' -o -iname '*bash*' -o -iname '*securite*' \) -exec mv -t LinkedInLearning/01-Linux/ {} +

# DevOps & automatisation
find LinkedInLearning -maxdepth 1 -type f \( -iname '*devops*' -o -iname '*microservice*' -o -iname '*ansible*' -o -iname '*jenkins*' -o -iname '*azure*' \) -exec mv -t LinkedInLearning/02-DevOps/ {} +

# Containers & Cloud
find LinkedInLearning -maxdepth 1 -type f \( -iname '*docker*' -o -iname '*kubernet*' -o -iname '*cloud*' -o -iname '*gcp*' \) -exec mv -t LinkedInLearning/03-Containers_Cloud/ {} +

# Méthodes
find LinkedInLearning -maxdepth 1 -type f \( -iname '*scrum*' -o -iname '*xp*' -o -iname '*agile*' \) -exec mv -t LinkedInLearning/04-Agile_Methods/ {} +

# Compléments
find LinkedInLearning -maxdepth 1 -type f \( -iname '*windows*' -o -iname '*sql*' -o -iname '*soft*' -o -iname '*webinaire*' -o -iname '*team*' -o -iname '*concentration*' \) -exec mv -t LinkedInLearning/99-Complements/ {} +

echo "=== RÉCAP ==="
for d in 01-Linux 02-DevOps 03-Containers_Cloud 04-Agile_Methods 99-Complements; do
  echo "LinkedInLearning/$d"
  ls -1 "LinkedInLearning/$d" 2>/dev/null || true
  echo
done
