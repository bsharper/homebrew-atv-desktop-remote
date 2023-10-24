cask "atv_desktop_remote" do
    version "1.1.3"
    sha256 :no_check # You can replace :no_check with the actual SHA256 checksum of your DMG files if you know them
  
    if Hardware::CPU.intel?
      sha256 "6458acdacc2fcc0f8521cf477c37459953c4c4a414276d1086f5674e2229b4eb"
      url "https://github.com/bsharper/atv-desktop-remote/releases/download/v#{version}/ATV.Remote-#{version}.dmg"
    else
      sha256 "ea95b169c89c29af5da0fd65a85d5256f71c77ec33607385238e8859671d992f"
      url "https://github.com/bsharper/atv-desktop-remote/releases/download/v#{version}/ATV.Remote-#{version}-arm64.dmg"
    end
  
    name "ATV Desktop Remote"
    desc "Unofficial desktop remote control GUI for Apple TV"
    homepage "https://github.com/bsharper/atv-desktop-remote"
  
    app "ATV Remote.app"
  
    depends_on formula: "python@3.11"
    depends_on formula: "pip"
    depends_on formula: "python@3.11" => "venv" 
  
    zap trash: [
      "~/Library/Application Support/ATV Remote"
    ]
  end
  