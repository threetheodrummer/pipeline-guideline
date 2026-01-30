#!/usr/bin/env bash
set -euo pipefail

echo "[Pipeline Guardian] Running Trivy dependency scan..."

trivy fs \
  --severity HIGH,CRITICAL \
  --exit-code 1 \
  --format json \
  --output reports/trivy-deps.json \
  .

echo "[Pipeline Guardian] Dependency scan passed"
