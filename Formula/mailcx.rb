# typed: false
# frozen_string_literal: true

# mailcx has been renamed to mailtd.
# This formula exists for backward compatibility.
class Mailcx < Formula
  desc "CLI for Mail.td — Developer Email Platform"
  homepage "https://mail.td"
  version "1.2.1"
  license "MIT"

  depends_on "mailtd/tap/mailtd"

  def install
    # No-op: the dependency handles installation
  end

  def caveats
    <<~EOS
      Please use: brew install mailtd/tap/mailtd
    EOS
  end
end
