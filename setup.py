from os import system

PACKAGES = ['python3', 'stow', 'python3-venv', 'zsh']

def main():
    update_cmd = ""
    install_cmd = ""

    os_release = ""
    with open("/etc/os-release") as f:
        os_release = f.read()
    os_release = os_release.split("\n")[1]
    print(os_release)

    if "Debian" in os_release:
        print("[*] Detected Debian as distro.")
        update_cmd = "sudo apt update"
        install_cmd = "sudo apt install -y"
    
    if "Arch" in os_release:
        print("[*] Detected Arch as distro.")
        update_cmd = "sudo pacman -Syu --noconfirm"
        install_cmd = "sudo pacman -S --noconfirm"
    
    # Installs packages
    _ = system(f"{update_cmd}")
    _ = system(f"{install_cmd} {' '.join(PACKAGES)}")
    
    # Installs rust
    _ = system("curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y")
    _ = system(". '$HOME/.cargo/env' ")
    _ = system("rustup component add rust-analyzer")

if __name__ == "__main__":
    main()
