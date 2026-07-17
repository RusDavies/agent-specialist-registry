#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

PYTHONDONTWRITEBYTECODE=1 python3 -m py_compile scripts/build.py
python3 scripts/build.py
find scripts -type d -name __pycache__ -prune -exec rm -rf {} +
git diff --exit-code -- .
