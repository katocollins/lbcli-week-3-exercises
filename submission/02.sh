# Create a native segwit address and get the public key from the address.

address=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress "" "bech32")
bitcoin-cli -regtest -rpcwallet=builderswallet getaddressinfo "$address" | jq -r '.pubkey'