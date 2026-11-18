#!/bin/sh

# Xcode does not put Homebrew on the PATH. Apple silicon installs to /opt/homebrew,
# Intel to /usr/local.
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

if which swiftgen >/dev/null; then
  cd "${SRCROOT}" || exit 1
  mkdir -p Dozer/Other/Generated
  swiftgen
else
  echo "error: SwiftGen not installed, run: brew install swiftgen"
  exit 1
fi
