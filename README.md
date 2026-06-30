# About

A Homebrew package manager tap for various Casks not in the main tap.

They are given the prefix `other-` to make explicit they are from this tap specifically, and for easy dependency management.

The Casks have the following properties:

## would be rejected from main homebrew-cask repository

e.g.

- unnotarized
- unsigned

Signing requires someone to be in the Apple Developer Program, which at present is 99 USD per member per year, this financial and labour overhead, explains why apps are not always signed, especially with smaller developers, or those not focusing on Apple development (providing for other OSs).

## being depracated

these are Casks that will be disabled soon or are already disabled....

the disabled messaged are commented out, to retain this information

e.g.

`disable! date: "2026-09-01", because: :fails_gatekeeper_check`

we begin just by using the existing code (removing the disable setting of course) and it is open to updates from myself or contributions.

## other

Other apps may be added for expediency, but it may be best to endeavour to add it to the official repository if possible.

## responsibility of use

The main [homebrew-cask](https://github.com/Homebrew/homebrew-cask) will not allow unsigned Casks on Apple Silicon M series according to their [acceptable casks policy](https://docs.brew.sh/Acceptable-Casks).

This tap, is meant to store software, where there is a degree of trust, but it has not been signed.  That being said YOU take full responsibility, for using any software in this tap.

# Tap (optional)

Think of a "tap" like a package repository.

You do not need to add our tap to Homebrew to install all the casks from it, so just do this if it works for you.

## Add


```bash
brew tap josephalton/other-cask-tap
```


## Trusting

You must trust either as the level of our tap (call casks) or at a cask level, to be able to install anything from it.

Whole tap trust:

```bash
brew trust josephalton/other-cask-tap 

```

Full-path cask install (without needing to add our tap) has implied trust, and trust at the per-cask basis, is explained in the sections below.


## List and confirm

```bash
brew tap
```

# Remove

```bash
brew untap josephalton/other-cask-tap
```
## Update

To make sure you are upto date with the Casks in this tap, periodically do this:

```bash
brew update
```

(will update ALL taps)

# Casks

Casks are like the programs within the specific tap.

I have given the prefix `other-` to differentiate this from the main Homebrew tap (and other taps).

## Install a cask

### Without adding the tap

The below will trust (implied) and install in one go.

```bash
brew install --cask josephalton/other-cask-tap/other-wine-stable
```

you do not need to have added our tap to do this.

### With the tap connected

if you have not trusted our tap as a whole you will also need to trust that specific cask first

```bash
brew trust --cask josephalton/other-cask-tap/other-wine-stable
```

```bash
brew install --cask other-wine-stable
```

## Uninstall

e.g.

```bash
brew remove other-wine-stable
```

# Contributing

Contributions/suggestions are welcome. A comment above the Cask .rb file explaining why it is not being added to the main homebrew-cask repository would be useful.