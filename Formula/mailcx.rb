# typed: false
# frozen_string_literal: true

class Mailcx < Formula
  desc "CLI for Mail.cx — Email Testing Platform & API for Developers"
  homepage "https://mail.cx"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_intel do
      url "https://github.com/mailtd/mailcx-cli/releases/download/v1.0.0/mailcx_1.0.0_darwin_amd64.tar.gz"
      sha256 "630ed1562e3b17c844221ec368b0f669653b1bc8b48f69016978de054f376486"
    end

    on_arm do
      url "https://github.com/mailtd/mailcx-cli/releases/download/v1.0.0/mailcx_1.0.0_darwin_arm64.tar.gz"
      sha256 "42498d3b1ff81e8f5b1b9145096ebe0601a9daf8f9d3bd322d9c71100577a8bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mailtd/mailcx-cli/releases/download/v1.0.0/mailcx_1.0.0_linux_amd64.tar.gz"
      sha256 "88ac7a36f4d29f13b6be587457726f3f4effbe9bb5d839540c92e27babf67a03"
    end

    on_arm do
      url "https://github.com/mailtd/mailcx-cli/releases/download/v1.0.0/mailcx_1.0.0_linux_arm64.tar.gz"
      sha256 "f050ee825eec24ee4e430e86ef2391e4f65a5a22d43fb6655acd73086b5a84cf"
    end
  end

  def install
    bin.install "mailcx"
  end

  test do
    system "#{bin}/mailcx", "--version"
  end
end
