# Xcode does not put Homebrew on the PATH. Apple silicon installs to /opt/homebrew,
# Intel to /usr/local.
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

if which swiftlint >/dev/null; then
  swiftlint
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
