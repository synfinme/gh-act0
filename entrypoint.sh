#!/bin/bash

set -e

api_url="https://pokeapi.co/api/v2/pokemon/${INPUT_POKEMON_ID}"
echo "api_url: ${api_url}"

pokemon_name=$(curl -s "${api_url}" | jq ".name")
echo "pokemon_name: ${pokemon_name}"

echo "::set-output name=pokemon_name::${pokemon_name}"
