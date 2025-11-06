#!/usr/bin/env bash
set -euo pipefail

APP_NAME="Flash Player"

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SWF="$PROJECT_ROOT/Main.swf"

open -a "$APP_NAME" "$SWF"
echo "Tailing trace log (Ctrl+C to stop)…"
tail -f "$HOME/Library/Preferences/Macromedia/Flash Player/Logs/flashlog.txt"
