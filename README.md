# Helion

## Brief Overview
Helion is a tool for verifying Base Sepolia's infrastructure by checking RPC connectivity, contract bytecode, and wallet balances. It provides insights into chain data like block numbers and gas prices without altering state or making transactions.

Built for Base.

## Purpose of Helion
Helion is designed to quickly verify that the Base Sepolia network is functioning as expected. It can be used to:
- Check RPC health and chainId
- Read wallet balances (when available)
- Fetch latest block and gas price data
- Verify the existence of bytecode at specified addresses

This tool is useful for developers, auditors, and automated systems that need to ensure the integrity of the environment before proceeding with more complex interactions.

## What Helion Does
- Checks the health of RPC with the `eth_chainId` method
- Reads wallet balances if addresses are available
- Fetches the latest block data and gas price
- Verifies bytecode at contract addresses
- Provides explorer links for all data output

## What Helion Never Does
- It does not send transactions
- It does not sign messages
- It does not alter onchain state

## Internal Flow
1) Initialize Base Sepolia constants (RPC, explorer)  
2) Perform an `eth_chainId` RPC health check  
3) Discover wallet addresses through Coinbase Wallet SDK  
4) If addresses are found, read and display balances  
5) Fetch and display the latest block number and gas price  
6) Check bytecode at target addresses  
7) Output the results with explorer links  

## Base Sepolia Details
- Network: Base Sepolia  
- chainId (decimal): 84532  
- Explorer: https://sepolia.basescan.org  

## Structure
- README.md  
- app/Helion.mjs  
- package.json  
- contracts/BalanceChecker.sol  
- contracts/BlockReader.sol  
- config/base-sepolia.json  
- samples/targets.json  

## Author Contacts
- GitHub: https://github.com/toils-elixir
- Email: toils-elixir.0a@icloud.com
  
## License
MIT License

## Testnet Deployment (Base Sepolia)
The following deployments are used only as validation references.

network: base sepolia  
chainId (decimal): 84532  
explorer: https://sepolia.basescan.org  

BalanceChecker.sol address:  
0x6C62a79F7037d48eC35E45B973bf999c9dCCF5Bc  

Deployment and verification:
- https://sepolia.basescan.org/address/0x6C62a79F7037d48eC35E45B973bf999c9dCCF5Bc
- https://sepolia.basescan.org/0x6C62a79F7037d48eC35E45B973bf999c9dCCF5Bc/0#code  

BlockReader.sol address:  
0x1D80c4c720c0dAd4b1BFF05d4d7641f23D865A74  

Deployment and verification:
- https://sepolia.basescan.org/address/0x1D80c4c720c0dAd4b1BFF05d4d7641f23D865A74
- https://sepolia.basescan.org/0x1D80c4c720c0dAd4b1BFF05d4d7641f23D865A74/0#code  

These deployments provide a controlled environment for validating base tooling and read-only onchain access prior to base mainnet usage.
