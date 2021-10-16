# PINTMUX
## Tmux Plugins To Monitor Crypto Price

This plugin is based on [tmux-crypto](https://github.com/Brutuski/tmux-crypto) but all the price is in IDR Currency. The data is fetched from [Pintu API](https://api.pintukripto.com)

#### Requirements

-   [TPM](https://github.com/tmux-plugins/tpm) is the recommended method of installing this plugin
-   [curl](https://curl.se/)
-   [jq](https://stedolan.github.io/jq/)

#### Installation

**Recommended method:**

-   Add plugin to your [TPM](https://github.com/tmux-plugins/tpm) plugins in your `.tmux.conf`
    -   ```vim
          set -g @plugin 'janganmurtad/pintmux'
        ```
-   While inside a tmux session press `prefix + I` to reload and install the plugin.
-   Add the desired _format strings_ to your status as such
    -   ```vim
          #{eth_idr}
        ```
-   Reload the tmux config and the changes should take effect.

**Manual Installation:**

-   Clone this repo
    -   ```vim
          git clone https://github.com/janganmurtad/pintmux.git ~/.tmux/pintmux
        ```
-   Add the following line to the bottom of your tmux config
    -   ```vim
          run-shell ~/.tmux/pintmux/crypto.tmux
        ```
-   Save the file and reload your tmux session.
#### Usage

-   Add the desired _format strings_ to your status as such.
    -   ```vim
          #{eth_idr} #{btc_idr}
        ```
-   Reload the tmux config and the changes should take effect.

### TODO List
- [x] BTC
- [x] ETH
- [ ] USDT
- [x] BNB
- [ ] COMP
- [ ] LINK
- [ ] SNX
- [ ] YFI
- [ ] UNI
- [ ] MKR
- [ ] AAVE
- [ ] SUSHI
- [ ] GRT
- [x] REN
- [ ] BAL
- [ ] CRV
- [x] MATIC
- [ ] OCEAN
- [ ] 1INCH
- [ ] AXS
- [ ] SAND
- [ ] USDC
- [ ] WBTC
- [x] PERP
- [ ] FTT
- [x] DOGE
- [ ] DOT
- [x] ADA
- [ ] XRP
- [ ] SOL
- [ ] XTZ
- [ ] ALICE
