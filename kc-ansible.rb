class KcAnsible < Formula
  desc "This package is designed to provide comfortable access to a venv-based ansible installation"
  homepage "https://github.com/KizzyCode/venv-wrapper-python"
  head "https://github.com/KizzyCode/venv-wrapper-python.git"

  url "https://github.com/KizzyCode/venv-wrapper-python/archive/refs/tags/0.1.0.tar.gz"
  sha256 "44b2265a8d3404f09e222894cb2ebe8df476977353705e4070e706cf11f6e48f"

  conflicts_with "ansible"

  def caveats
    caveats = "Due to sandboxing, you need to run `ansible-update` to initialize and update the venv"
  end

  def install
    # Modify config
    File.open("src/config.py", 'w') { |file|
      file.write(
        <<~EOF
          setup: str = "ansible-update"
          name: str = "ansible"
          packages: list[str] = ["ansible", "nc-dnsapi"]
        EOF
      )
    }

    # Install basic files
    bin.install "src/venv-wrapper.py" => "venv-wrapper.py"
    bin.install "src/config.py" => "config.py"

    # Create symlinks
    system "ln", "-s", "venv-wrapper.py", "ansible"
    system "ln", "-s", "venv-wrapper.py", "ansible-community"
    system "ln", "-s", "venv-wrapper.py", "ansible-config"
    system "ln", "-s", "venv-wrapper.py", "ansible-connection"
    system "ln", "-s", "venv-wrapper.py", "ansible-console"
    system "ln", "-s", "venv-wrapper.py", "ansible-doc"
    system "ln", "-s", "venv-wrapper.py", "ansible-galaxy"
    system "ln", "-s", "venv-wrapper.py", "ansible-inventory"
    system "ln", "-s", "venv-wrapper.py", "ansible-playbook"
    system "ln", "-s", "venv-wrapper.py", "ansible-pull"
    system "ln", "-s", "venv-wrapper.py", "ansible-test"
    system "ln", "-s", "venv-wrapper.py", "ansible-vault"
    system "ln", "-s", "venv-wrapper.py", "ansible-update"

    # Install symlinks
    bin.install "ansible"
    bin.install "ansible-community"
    bin.install "ansible-config"
    bin.install "ansible-connection"
    bin.install "ansible-console"
    bin.install "ansible-doc"
    bin.install "ansible-galaxy"
    bin.install "ansible-inventory"
    bin.install "ansible-playbook"
    bin.install "ansible-pull"
    bin.install "ansible-test"
    bin.install "ansible-vault"
    bin.install "ansible-update"
  end

  test do
    assert system("which converthex") != true
  end
end
