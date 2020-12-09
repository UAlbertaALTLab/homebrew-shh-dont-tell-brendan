class Kbdgen < Formula
  desc "Generate keyboards and keyboard layouts for various operating systems"
  homepage "https://divvun.github.io/kbdgen/"
  url "https://github.com/divvun/kbdgen/releases/download/v2.0.0-alpha.16/kbdgen_2.0.0-alpha.16_macos_amd64.tar.xz"
  sha256 "4526603dd48892c88a57f985c6dddbbe6c1ecf065e3f41d1d02558f952838626"
  license "MIT"

  def install
    bin.install "kbdgen"
  end

  test do
    # TODO: download a resource() keyboard and run kbdgen with that
    assert_match(/^kbdgen\s+\d+[.]\d+[.]\d+/, shell_output("kbdgen --version"))
  end
end
