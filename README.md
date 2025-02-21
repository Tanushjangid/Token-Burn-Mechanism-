# Token Burn Mechanism

## Project Description
This project implements a **Deflationary Token** that burns a percentage of tokens during each transaction. Every transfer reduces the total supply, ensuring a decreasing token supply over time.

## Smart Contract Details
- **Contract Name**: DeflationaryToken
- **Burn Rate**: 2% per transaction
- **Smart Contract Address**: `0x10E2fcb0F78BB30214626712669d3b6b9b896905`

## Features
- 🔥 **Automatic Burn**: A portion of tokens is burned on every transfer.
- 🔄 **Decentralized**: No central control over the burn mechanism.
- 📉 **Supply Reduction**: Total supply decreases over time, creating scarcity.

## Installation
1. Clone this repository:
   ```sh
   git clone https://github.com/yourusername/token-burn-mechanism.git
   cd token-burn-mechanism
   ```
2. Install dependencies:
   ```sh
   npm install
   ```

## Deployment
To deploy the contract, use Hardhat or Truffle:
```sh
npx hardhat run scripts/deploy.js --network mainnet
```

## Usage
- Check balance:
  ```solidity
  contract.balanceOf(address);
  ```
- Transfer tokens:
  ```solidity
  contract.transfer(recipient, amount);
  ```

## License
This project is licensed under the MIT License.
