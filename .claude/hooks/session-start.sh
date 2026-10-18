#!/bin/bash
# Installs the Flutter SDK and app packages so tests run in Claude Code cloud sessions.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Matches the Dart SDK pubspec.lock was resolved with (3.12.2); a newer SDK rewrites the lockfile.
FLUTTER_VERSION=3.44.9
FLUTTER_HOME=/opt/flutter-$FLUTTER_VERSION
if [ ! -x "$FLUTTER_HOME/bin/flutter" ]; then
  mkdir -p "$FLUTTER_HOME"
  curl -fsSL "https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz" \
    | tar -xJ -C "$FLUTTER_HOME" --strip-components=1
  git config --global --add safe.directory "$FLUTTER_HOME"
fi
export PATH="$FLUTTER_HOME/bin:$PATH"
flutter --disable-analytics >/dev/null 2>&1 || true

cd "$CLAUDE_PROJECT_DIR"
flutter pub get --enforce-lockfile

echo "export PATH=\"$FLUTTER_HOME/bin:\$PATH\"" >> "$CLAUDE_ENV_FILE"
