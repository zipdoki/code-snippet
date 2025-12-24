class Doki < Formula
  desc "brew test"
  homepage "test.com"
  version "0.0.1"
  license "MIT"

  ENV["CGO_ENABLED"] = "0"

  on_macos do
    url "https://github.com/zipdoki/code-snippet/releases/download/test/test.txt"
    sha256 "f2ca1bb6c7e907d06dafe4687e579fce76b37e4e93b7605022da52e6ccc26fd2"
  end

  def install
    bin.install "test.txt" => "test"
  end

  test do
    system "#{bin}/test", "--version"
  end
end
