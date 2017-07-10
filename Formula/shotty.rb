class Shotty < Formula
  version  "0.0.1"
  homepage "https://github.com/itspriddle/shotty"
  url      "https://github.com/itspriddle/shotty/archive/v0.0.1.tar.gz"
  sha256   "c9f64b64d75d22d687ae31f8d6c0270d6dcae61bb32c4cab12e2efcca1bc4b75"

  head "https://github.com/itspriddle/shotty"

  def install
    bin.install "bin/shotty"
  end

  def plist
    <<-EOS.undent
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>net.nevercraft.shotty</string>
          <key>WatchPaths</key>
          <array>
            <string>#{ENV.fetch("HOME")}/Desktop</string>
          </array>
          <key>ExitTimeOut</key>
          <integer>0</integer>
          <key>ThrottleInterval</key>
          <integer>1</integer>
          <key>EnvironmentVariables</key>
          <dict>
            <key>PATH</key>
            <string>/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin:/bin</string>
          </dict>
          <key>ProgramArguments</key>
          <array>
            <string>/usr/local/bin/shotty</string>
            <string>mv-last-screenshot</string>
          </array>
        </dict>
      </plist>
    EOS
  end
end
