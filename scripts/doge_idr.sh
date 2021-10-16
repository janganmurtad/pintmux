#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
source "$CURRENT_DIR/helpers.sh"

get_price()
{
    price=$(curl -s https://api.pintukripto.com/v1/trade/exchange-rate/doge | jq '.payload.price.close' | sed 's/\"//g')
    echo "$price" | bc -l | awk '{printf "DOGE: %.i", $1}'
}

get_price

