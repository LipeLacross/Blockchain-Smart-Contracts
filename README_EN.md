## 🌐 [Versão em Português do README](README.md)

# Blockchain-Smart-Contracts

This project aims to develop a management and analysis system for treatment stations, using technologies like smart contracts, artificial intelligence, and web interfaces. The system allows interaction with various functionalities, including voting, property registration, project delay prediction, resource allocation, IoT sensor monitoring, and service exchange among users.

## 🔨 Project Features

- **Voting System**: Allows users to vote for candidates, including listing and counting votes.
- **Property Registration**: Users can register properties and view registered properties.
- **Delay Prediction**: A system that uses AI to predict delays in construction projects based on historical data.
- **Resource Allocation**: Forecasts the resource needs for construction projects, automating allocation with smart contracts.
- **IoT Sensor Monitoring**: Uses sensors to monitor soil and weather conditions, recording data on a blockchain.
- **Service Exchange**: A system that allows users to exchange services with each other, recording transactions on the blockchain.

## ✔️ Techniques and Technologies Used

- **Solidity**: Programming language for developing smart contracts on Ethereum.
- **JavaScript**: Language used for frontend logic.
- **HTML/CSS**: Structure and styling of the frontend.
- **Python**: Used for data analysis and predictive modeling with AI.
- **Web3.js**: Library for interacting with the Ethereum blockchain.
- **Ganache**: For developing and testing smart contracts.

## 📁 Project Structure

- **README.md**: Main documentation of the project.
- **experimentation_activity_15.sol**: Smart contract for activity 15.
- **experimentation_activity_16.sol**: Smart contract for activity 16.
- **experimentation_activity_19.sol**: Smart contract for activity 19.
- **experimentation_activity_20/**: Directory for activity 20.
    - **Voting.sol**: Smart contract for the voting system.
    - **app.js**: Frontend logic of the voting application.
    - **index.html**: Main HTML page of the voting application.
- **experimentation_activity_21/**: Directory for activity 21.
    - **PropertyRegistry.sol**: Smart contract for property registration.
    - **app.js**: Frontend logic for property registration.
    - **index.html**: Main HTML page for property registration.
- **experimentation_activity_22/**: Directory for activity 22.
    - **ProjectContract.sol**: Smart contract for project management.
    - **delay_prediction.py**: Python script for predicting delays in projects.
- **experimentation_activity_23/**: Directory for activity 23.
    - **ResourceAllocation.sol**: Smart contract for resource allocation.
    - **resource_prediction.py**: Python script for forecasting resource needs.
- **experimentation_activity_24/**: Directory for activity 24.
    - **SensorMonitoring.sol**: Smart contract for sensor monitoring.
    - **sensor_monitoring.py**: Python script for simulating soil data readings.
- **experimentation_activity_25/**: Directory for activity 25.
    - **SimpleStorage.sol**: Smart contract for simple storage.
- **experimentation_activity_Final/**: Directory for the final activity.
    - **contract/**: Directory for the final activity contracts.
        - **ServiceExchange.sol**: Smart contract for service exchange.
    - **frontend/**: Directory for the final activity frontend.
        - **README.md**: Frontend documentation.
        - **README_EN.md**: Frontend documentation in English.
        - **app.js**: Frontend logic for the service exchange system.
        - **index.html**: Main HTML page for the service exchange system.
        - **style.css**: CSS styles for the application.
- **tex.txt**: Additional text file with relevant information.
- **text_activities.md**: Activities described in Portuguese.
- **text_activities_en.md**: Activities described in English.

## 🛠️ Run the Project Locally

To start the project locally, follow the steps below:

1. **Ensure Node.js is installed**:
    - [Node.js](https://nodejs.org/) is required to run the project. You can check if it is already installed with:

      ```bash
      node -v
      ```

    - If it is not installed, download and install the recommended version.

2. **Clone the Repository**:
    - Copy the repository URL and run the following command in the terminal:

      ```bash
      git clone <REPOSITORY_URL>
      ```

3. **Install Dependencies**:
    - Navigate to the project directory and install the necessary dependencies with:

      ```bash
      npm install
      ```

4. **Start the Server**:
    - Start the server to view the project in the browser with:

      ```bash
      npm start
      ```

## 🌐 Deploy

1. **Choose a platform** (e.g., Heroku, Vercel).
2. **Create a new project** on the platform.
3. **Upload the project files**.
4. **Configure environment variables** (if needed).
5. **Test the generated URL** to ensure it's working.
