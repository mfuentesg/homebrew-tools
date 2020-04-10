# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Ksd < Formula
  desc "ksd` is a tool, whose aim is help you to visualize in text plain your kubernetes secrets, either `yaml` or `json` outputs."
  homepage "https://github.com/mfuentesg/ksd"
  version "1.0.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mfuentesg/ksd/releases/download/v1.0.6/ksd_1.0.6_Darwin_x86_64.tar.gz", :using => :curl
    sha256 "e033777bb042384104721d33b2f933cc37f2abf540a6814cb07ade201e57cc72"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mfuentesg/ksd/releases/download/v1.0.6/ksd_1.0.6_Linux_x86_64.tar.gz", :using => :curl
      sha256 "740b050d8bf9ceb80b320cb3d0ccfcb2af667b78856d80646e8f0f13b6556813"
    end
  end

  def install
    bin.install "ksd"
  end

  def caveats; <<~EOS
    ksd < kubectl get secret <secret name> <secret file>.<yaml|json>
  EOS
  end

  test do
    ksd version
  end
end
