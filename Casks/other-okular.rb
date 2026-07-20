# unnotarized
cask "other-okular" do
  arch arm: "arm64", intel: "x86_64"

  version "7676"
  sha256 :no_check

  url "https://cdn.kde.org/ci-builds/graphics/okular/master/macos-arm64/okular-master-#{version}-macos-clang-#{arch}.dmg"
  name "Okular"
  desc "Document viewer"
  homepage "https://okular.kde.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/graphics/okular/master/macos-#{arch}/"
    regex(/okular-master-(\d+)-macos-clang-#{arch}\.dmg/i)
  end

  app "okular.app"

  zap trash: [
    "~/Library/Application Support/okular",
    "~/Library/Preferences/org.kde.okular.plist",
  ]
end