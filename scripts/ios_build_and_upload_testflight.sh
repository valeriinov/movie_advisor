#!/usr/bin/env bash
set -euo pipefail

print_usage() {
  cat <<'EOF'
Usage: scripts/ios_build_and_upload_testflight.sh <flavor>

Flavors:
  dev
  prod
EOF
}

fail() {
  echo "Error: $1" >&2
  exit 1
}

flavor="${1:-}"

if [[ -z "${flavor}" ]]; then
  print_usage
  fail "Flavor is required."
fi

if [[ "${flavor}" != "dev" && "${flavor}" != "prod" ]]; then
  print_usage
  fail "Unsupported flavor: ${flavor}"
fi

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root_dir="$(cd "${script_dir}/.." && pwd)"

export BUNDLE_GEMFILE="${root_dir}/Gemfile"

cd "${root_dir}/ios"
bundle exec fastlane ios upload_testflight flavor:"${flavor}"
