<h1 align="center"> Atlan Homebrew Tap </h1>

<h3 align="center">brew tap atlanhq/atlan</h3>
<p align="center">
    <a href="" title="Apple Intel x86_64 supported">
    <img alt="macOS architectures supported" src="https://img.shields.io/badge/macOS-Intel%20x86__64%20-007DC3?logo=apple&logoColor=555555&labelColor=ffffff">
  </a>  
  <a href="" title="Apple M1 arm64 supported">
    <img alt="macOS architectures supported" src="https://img.shields.io/badge/macOS-Apple%20arm64%20-c0476d?logo=apple&logoColor=555555&labelColor=ffffff">
  </a>
  <a href="" title="Linux x86_64 supported">
    <img alt="Linux architectures supported" src="https://img.shields.io/badge/Linux-x86__64%20-f6ab01?logo=linux&logoColor=555555&labelColor=ffffff">
  </a>
</p>

## Documentation

> Visit [https://developer.atlan.com](https://developer.atlan.com) for available formulae.


## Usage

### Homebrew Installation

- On macOS, install Xcode Command Line Utilities:

```zsh
xcode-select --install
```

- On Linux, install cURL and Git:

```bash
# Using APT
sudo apt-get install -y curl git

# Using Yum
sudo yum install -y curl git
```

- Install Homebrew:

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

- If previously installed, update homebrew and the formulae:

```zsh
brew update
```

### Add This Tap

Fetch the formulae in this tap:

```zsh
brew tap atlanhq/atlan
```

### Install Latest Atlan CLI Version

```zsh 
brew install atlan
```