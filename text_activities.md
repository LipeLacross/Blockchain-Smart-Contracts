## 🌐 [English Version of README](text_activities_en.md)

# Experimentation Activities in Blockchain

This repository contains a series of experimentation activities designed to explore and understand blockchain technology, its concepts, and applications.

## Table of Contents

1. [Activity 1: What is Blockchain?](#activity-1-what-is-blockchain)
2. [Activity 2: Transactions in Blockchain](#activity-2-transactions-in-blockchain)
3. [Activity 3: Setting Up a Blockchain Network](#activity-3-setting-up-a-blockchain-network)
4. [Activity 4: Example of a Shipment Record in Blockchain](#activity-4-example-of-a-shipment-record-in-blockchain)
5. [Activity 5: Real-Time Shipment Monitoring with Blockchain](#activity-5-real-time-shipment-monitoring-with-blockchain)
6. [Activity 6: Difference Between PoW and PoS](#activity-6-difference-between-pow-and-pos)
7. [Activity 7: Advantages of PoS in Energy Consumption](#activity-7-advantages-of-pos-in-energy-consumption)
8. [Activity 8: Considerations for Staking in PoS](#activity-8-considerations-for-staking-in-pos)
9. [Activity 9: Smart Contracts](#activity-9-smart-contracts)
10. [Activity 10: Case Study: Implementing Blockchain in a Hospital](#activity-10-case-study-implementing-blockchain-in-a-hospital)
11. [Activity 11: Fungibility of ERC-20 Tokens](#activity-11-fungibility-of-erc-20-tokens)
12. [Activity 12: Examples of Token Applications](#activity-12-examples-of-token-applications)
13. [Activity 13: How Smart Contracts Work on Ethereum](#activity-13-how-smart-contracts-work-on-ethereum)
14. [Activity 14: Function of the Ethereum Virtual Machine (EVM)](#activity-14-function-of-the-ethereum-virtual-machine-evm)
15. [Activity 17: Importance of Chainlink for Smart Contracts](#activity-17-importance-of-chainlink-for-smart-contracts)
16. [Activity 18: Weather Contract Using Chainlink](#activity-18-weather-contract-using-chainlink)
17. [Activity 26: 51% Attack on Public Blockchains](#activity-26-51-attack-on-public-blockchains)

---

## Activity 1: What is Blockchain?

**Blockchain** is a decentralized technology that consists of a distributed ledger of transactions across a network of computers. Each transaction is grouped into a block, and each block is linked to the previous one, forming a chain. Blockchain ensures the integrity, immutability, and transparency of data, as once a transaction is recorded, it cannot be altered.

### Key Differences Between Blockchain and Traditional Databases

- **Data Storage**: In blockchain, data is distributed and decentralized, with all participating nodes holding a copy of the record, ensuring greater security and transparency. In contrast, traditional databases centralize data in a single server or group of servers, controlled by a single entity.

- **Block Structure**: A block in the blockchain stores a set of transactions, containing information about the transactions performed, a timestamp, and a hash connecting it to the previous block, forming the chain. Each block also includes the Merkle Root for efficient transaction verification.

- **Data Integrity**: Data integrity in blockchain is maintained through cryptography and the decentralized nature of the network. Each block contains the hash of the previous block, ensuring that any alteration in one block invalidates the entire subsequent chain.

---

## Activity 2: Transactions in Blockchain

A **transaction** in the context of blockchain is any action recorded on the network, such as transferring data or assets. Transactions are verified by nodes in the network that execute consensus algorithms, such as Proof of Work (PoW) or Proof of Stake (PoS), to validate authenticity and ensure data correctness before inclusion in a block.

### Challenges and Limitations of Blockchain

- **Scalability**: Large public networks, like Bitcoin, have a limited number of transactions that can be processed per second, which may cause delays.
- **Energy Consumption**: Algorithms like PoW consume significant energy, which can be unsustainable in some situations.
- **Privacy**: While data is secure, it is also transparent. Depending on the blockchain type (public or private), this may compromise sensitive information.
- **Integration**: Integrating blockchain with legacy systems can be complex and require substantial changes in infrastructure.

---

## Activity 3: Setting Up a Blockchain Network

### Type of Blockchain

LogiChain should opt for a **private blockchain** for greater control over who can participate and validate transactions.

### Nodes in the Network

The LogiChain blockchain network could consist of three types of nodes:

1. **Client Nodes**: Used by operators and systems of LogiChain to record shipments and check transaction status.
2. **Peer Nodes**: Responsible for maintaining a copy of the ledger and validating transactions related to shipments.
3. **Ordering Nodes**: Responsible for validating and ordering transactions according to LogiChain’s endorsement policies, ensuring transactions are processed reliably.

### Block Structure

Each block would contain essential information about shipments, such as:

- Shipment ID
- Origin and destination locations
- Departure and arrival date and time
- Responsible transport provider
- Shipment status (in transit, delivered, etc.)
- Hash of the previous block

### Transaction Verification

The verification process would use a simplified consensus algorithm (like PoS) to ensure efficient validation of transactions, given that the network will be private and controlled.

---

## Activity 4: Example of a Shipment Record in Blockchain

**Block 45:**
- Shipment ID: `123456789`
- Departure Date: `12/10/2024`
- Origin Location: `Port of Santos, Brazil`
- Destination Location: `Port of Rotterdam, Netherlands`
- Carrier: `LogiChain Transportes`
- Status: `In Transit`
- Previous Block Hash: `6df7a8b...`

The block will be verified by the network nodes, which will validate the shipment details and, once approved, add it to the chain. The transaction's integrity will be ensured through the use of a Merkle tree, allowing any node to validate the inclusion of this transaction in the block.

---

## Activity 5: Real-Time Shipment Monitoring with Blockchain

LogiChain can utilize smart contracts on the blockchain to automate the real-time status updates of shipments. Each step of the transport process (boarding, in transit, delivery) could be automatically recorded as soon as the smart contracts receive data from IoT sensors or manual updates.

### Benefits

- **Security**: Since updates are recorded on an immutable blockchain, there are fewer chances of fraud or data tampering.
- **Operational Efficiency**: The ability to monitor shipments in real time allows for quicker responses to issues like delays or deviations, improving fleet management.
- **Transparency**: Customers and partners can access the updated status of shipments, providing greater trust and efficiency in the logistics process.

---

## Activity 6: Difference Between PoW and PoS

The primary difference between **Proof of Work (PoW)** and **Proof of Stake (PoS)** lies in the method used to validate transactions and add blocks to the blockchain:

- **PoW** requires participants (miners) to solve complex mathematical problems using computational power. The first miner to solve the problem validates the block and is rewarded, making the process highly dependent on specialized hardware and energy consumption.

- **PoS** does not rely on computational power. Instead, validators are chosen based on the amount of coins they hold and are willing to "stake." The more coins staked, the higher the chance of being selected to validate a block. This method is much more energy-efficient.

---

## Activity 7: Advantages of PoS in Energy Consumption

The advantages of PoS in terms of energy consumption include:

- **Lower Demand for Computational Resources**: Unlike PoW, PoS does not require validators to use large amounts of computational power to compete for block validation, resulting in a drastic reduction in energy consumption.

- **Sustainability**: By not relying on intensive mining, PoS is significantly more sustainable, eliminating the need to operate specialized data centers or consume electricity on a large scale like PoW.

- **Reduced Environmental Impact**: With no computational competition, PoS helps lower the carbon footprint associated with transaction validation.

---

## Activity 8: Considerations for Staking in PoS

When deciding to "stake" coins in a PoS network, consider the following factors:

- **Rewards**: Evaluate the rewards offered to validators by the network. The higher the reward, the greater the incentive to stake coins.
- **Risks**: Consider the risk of losing part of the coins if the validator acts dishonestly or fails in their responsibilities (slashing).
- **Lock-in Period**: Check if there is a mandatory lock-in period during which coins are blocked, affecting liquidity and preventing you from using or selling the coins during that time.
- **Network Stability**: Assess the security and history of the blockchain network to ensure it is a reliable environment for staking coins.

### Impact of Stake Size on Validator Selection

In PoS, the larger the amount of staked coins, the higher the chance of being selected as a validator. The selection of validators is generally proportional to the size of the stake, meaning holders of larger amounts of coins have a statistical advantage over those with fewer coins.

### Strategy for Maximizing Validation Chances

To maximize the chances of being chosen as a validator, I would adopt the following strategy:

- **Stake a Significant Amount of Coins**: Increasing the amount of staked coins can considerably boost my chances of being selected to validate transactions.
- **Monitor Network Conditions**: Keep an eye on the level of competition among validators and adjust my strategy accordingly to maintain a favorable position.
- **Participate in a Staking Pool**: If my holdings are smaller, joining a staking pool could help me benefit from combined stakes and shared rewards, increasing the chances of receiving validation rewards.

---

## Activity 9: Smart Contracts

A **smart contract** is a self-executing contract with the terms of the agreement directly written into code. Smart contracts are stored and replicated on the blockchain, and their execution is automatic when predefined conditions are met.

### Benefits of Smart Contracts

- **Automation**: They automate processes, eliminating the need for intermediaries and reducing transaction time and costs.
- **Transparency**: All parties can view the contract and its terms, ensuring clarity and reducing disputes.
- **Security**: Smart contracts are stored on the blockchain, providing strong security against tampering or fraud.

---

## Activity 10: Case Study: Implementing Blockchain in a Hospital

In a hospital setting, blockchain technology could be implemented to manage patient records securely and efficiently. The key components of this implementation would include:

### Key Features

- **Decentralized Patient Records**: Each patient's record could be stored in a block, with access controlled through smart contracts.
- **Consent Management**: Patients could manage consent for sharing their data through the blockchain, allowing them to control who can access their information.
- **Data Integrity**: The immutable nature of blockchain ensures that once data is recorded, it cannot be altered without consensus from authorized parties.

### Benefits

- **Improved Data Security**: The decentralized nature of blockchain reduces the risk of data breaches.
- **Enhanced Patient Privacy**: Patients have greater control over their data, improving trust and engagement.
- **Interoperability**: Different healthcare providers could access and share patient data seamlessly, leading to better care coordination.

---

## Activity 11: Fungibility of ERC-20 Tokens

Fungibility is the property of a good or asset whose individual units are interchangeable and, thus, indistinguishable from one another. ERC-20 tokens are fungible as each token has the same value and utility, making them interchangeable.

### Importance of Fungibility in Blockchain

- **Liquidity**: Fungible tokens can be traded easily on exchanges, increasing liquidity in the market.
- **Standardization**: The ERC-20 standard ensures consistency across tokens, facilitating their use in various applications.
- **Simplicity**: Fungibility simplifies the trading and exchange process, allowing users to transact with tokens without needing to consider their unique characteristics.

---

## Activity 12: Examples of Token Applications

ERC-20 tokens have a wide range of applications across various sectors, including:

- **Utility Tokens**: Used to access specific services or platforms, such as Basic Attention Token (BAT), which is used within the Brave browser.
- **Stablecoins**: Tokens like USDC and DAI maintain a stable value relative to fiat currencies, providing a reliable medium of exchange.
- **Governance Tokens**: Tokens that grant holders voting rights in decentralized organizations, such as Uniswap’s UNI token.

---

## Activity 13: How Smart Contracts Work on Ethereum

Smart contracts on the Ethereum platform are written in the Solidity programming language and executed on the Ethereum Virtual Machine (EVM). The main steps for their operation include:

1. **Writing the Contract**: Developers create smart contracts using Solidity, defining the rules and conditions for execution.
2. **Deploying the Contract**: Once written, the contract is deployed on the Ethereum blockchain, where it receives a unique address.
3. **Executing the Contract**: When the predefined conditions are met, the contract automatically executes the specified actions, such as transferring tokens or updating data.

---

## Activity 14: Function of the Ethereum Virtual Machine (EVM)

The **Ethereum Virtual Machine (EVM)** is a runtime environment for executing smart contracts on the Ethereum blockchain. Its primary functions include:

- **Execution of Smart Contracts**: The EVM processes all transactions and smart contracts, ensuring they are executed correctly.
- **Isolation**: It provides a secure environment for smart contracts, preventing them from interacting with one another in unintended ways.
- **Deterministic Outcomes**: The EVM ensures that the same transaction produces the same outcome, regardless of where it is executed in the network.

---

## Activity 17: Importance of Chainlink for Smart Contracts

**Chainlink** is a decentralized oracle network that enables smart contracts on various blockchains to securely connect to real-world data and external APIs. Its importance lies in:

- **Data Accessibility**: Chainlink allows smart contracts to access off-chain data, expanding their capabilities beyond blockchain data.
- **Security**: By using a decentralized network of oracles, Chainlink mitigates the risk of relying on a single source of data, enhancing the trustworthiness of the information received.
- **Integration with Real-World Applications**: Chainlink enables the creation of more complex decentralized applications (dApps) that require real-time data, improving their functionality.

---

## Activity 18: Weather Contract Using Chainlink

A **weather contract** using Chainlink could be designed to execute payments automatically based on weather conditions. For example, a farmer could create a smart contract that triggers payment if it rains above a certain threshold.

### Steps for Implementation

1. **Defining Conditions**: The farmer defines the weather conditions that will trigger the contract (e.g., rainfall).
2. **Connecting to Chainlink**: The smart contract integrates with Chainlink oracles that provide the relevant weather data.
3. **Execution**: When the conditions are met, the smart contract executes the payment automatically, ensuring a fair and transparent transaction.

---

## Activity 26: 51% Attack on Public Blockchains

A **51% attack** occurs when a single entity or group controls more than 50% of the network's mining power or stakes in a blockchain. This control allows them to manipulate the blockchain by:

- **Double Spending**: They can reverse transactions, allowing them to spend the same cryptocurrency more than once.
- **Preventing Confirmations**: They can prevent new transactions from being confirmed, disrupting the network.
- **Forking the Blockchain**: They can create a fork of the blockchain to their advantage, affecting the network's integrity.
