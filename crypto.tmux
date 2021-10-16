#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/scripts/helpers.sh"

crypto_commands=(
  "#($CURRENT_DIR/scripts/ada_idr.sh)"
  "#($CURRENT_DIR/scripts/ren_idr.sh)"
  "#($CURRENT_DIR/scripts/matic_idr.sh)"
  "#($CURRENT_DIR/scripts/btc_idr.sh)"
  "#($CURRENT_DIR/scripts/eth_idr.sh)"
  "#($CURRENT_DIR/scripts/bnb_idr.sh)"
  "#($CURRENT_DIR/scripts/doge_idr.sh)"
  "#($CURRENT_DIR/scripts/perp_idr.sh)"
)

crypto_interpolation=(
	"\#{ada_idr}"
	"\#{ren_idr}"
	"\#{matic_idr}"
	"\#{btc_idr}"
	"\#{eth_idr}"
	"\#{bnb_idr}"
	"\#{perp_idr}"
	"\#{doge_idr}"
)

set_tmux_options() {
	local option="$1"
	local value="$2"
	tmux set-option -gp "$option" "$value"
}

do_interpolation() {
	local interpolated="$1"

	for ((i=0; i<${#crypto_commands[@]}; i++)); do
		interpolated=${interpolated/${crypto_interpolation[$i]}/${crypto_commands[$i]}}
	done

	echo "$interpolated"
}

update_tmux_option() {
	local option="$1"
	local option_value="$(get_tmux_option "$option")"
	local new_option_value="$(do_interpolation "$option_value")"
	set_tmux_option "$option" "$new_option_value"
}

main() {
	update_tmux_option "status-right"
	update_tmux_option "status-left"
}

main

