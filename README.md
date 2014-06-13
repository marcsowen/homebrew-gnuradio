Homebrew tap for gnuradio specific packages. The focus is on the cheap Realtek RTL2832U devices.

Installation
------------

First add this tap to homebrew:

```brew tap marcsowen/homebrew-gnuradio```

If you want to install gqrx you need to do the following steps:

```
brew install --HEAD librtlsdr
brew install gnuradio
brew install --HEAD gr-osmosdr
brew install --HEAD gqrx
```

The latest release of librtlsdr is broken ob my machine, therefore you need to get the HEAD version at moment. Same applies for most of my taps. I hope I can fix this soon.
