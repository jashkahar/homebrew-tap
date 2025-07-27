# open-workbench-cli.rb

class OpenWorkbenchCli < Formula
  desc "A powerful CLI for scaffolding modern web applications"
  homepage "https://github.com/jashkahar/open-workbench-cli"
  # This URL should point to the source code tarball from your GitHub release
  url "https://github.com/jashkahar/open-workbench-cli/archive/refs/tags/v0.2.0.tar.gz"
  # You must update this sha256 hash for every new release!
  sha256 "F77F3B00CAB8BB95E517BC26CBBF417BBAAC8180043ABF52D81467F8892984AF"
  license "MIT"

  # This tells Homebrew that Go is required to build the tool
  depends_on "go" => :build

  def install
    # This tells Homebrew how to build and install the binary
    system "go", "build", "-o", bin/"open-workbench-cli", "./..."
  end

  test do
    # This is a simple test to ensure the binary runs
    assert_match "Welcome to the Open Workbench CLI", shell_output("#{bin}/open-workbench-cli")
  end
end
