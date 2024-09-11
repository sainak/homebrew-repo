# https://github.com/zen-browser/desktop/blob/main/Casks/zen-browser.rb
cask "repo-zen-browser" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0-a.39"
  sha256 arm:   "9e637193ef722ffab3491a7fe9a2a1725c562d8ee21bea38df08dc5d90067cb0",
         intel: "4de8907641989639ee159681cd131a22a20fcf414373543a62ee0f9df2739845"

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen.macos-#{arch}.dmg",
      verified: "github.com/zen-browser/desktop/"
  name "Zen Browser"
  desc "Beautifully designed, privacy-focused browser packed with awesome features"
  homepage "https://zen-browser.app/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zen Browser.app"

  zap trash: [
        "~/Library/Application Support/zen",
        "~/Library/Caches/Mozilla/updates/Applications/Zen Browser",
        "~/Library/Caches/zen",
        "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
        "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end