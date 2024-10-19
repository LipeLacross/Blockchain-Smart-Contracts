# Service Exchange Blockchain

This project implements a blockchain-based system to register service exchanges in a community where neighbors frequently trade services such as gardening, home repairs, and tutoring. The goal is to ensure that these exchanges are recorded transparently and fairly, providing a digital ledger that can be accessed and verified by all community members.

## Smart Contract

The smart contract is written in Solidity and allows the registration of service exchanges. Each transaction includes details such as:

- **Service Offered By**: The person offering the service.
- **Service Received By**: The person receiving the service.
- **Service Type**: The type of service exchanged (e.g., gardening, tutoring).
- **Date**: The date of the transaction.

### Contract Functions

- **`registerExchange`**: Registers a new service exchange transaction.
- **`getExchanges`**: Retrieves all service exchanges recorded in the blockchain.

## Requirements

- Node.js
- MetaMask extension installed in your browser
- Ganache for local Ethereum blockchain simulation (optional)

## Setup

1. **Install Dependencies**:
   Make sure you have Node.js installed. Navigate to the project directory and run:

   ```bash
   npm install
