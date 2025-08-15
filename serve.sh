#!/usr/bin/env bash
PORT="${1:-5500}"
set -e
echo "Starting static server on http://localhost:${PORT}/"
if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server "${PORT}"
elif command -v python >/dev/null 2>&1; then
  exec python -m http.server "${PORT}"
else
  echo "Python not found. If you have Node.js, run: npx http-server -p ${PORT} ." >&2
  exit 1
fi
