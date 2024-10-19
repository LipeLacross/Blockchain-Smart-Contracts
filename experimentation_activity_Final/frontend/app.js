const Web3 = require('web3');
let web3;

// Endereço do contrato e ABI (pode ser obtido após a implantação do contrato)
const contractAddress = "COLOQUE_AQUI_O_ENDEREÇO_DO_SEU_CONTRATO";
const contractABI = [ /* ABI gerada após o deploy do contrato */ ];

async function init() {
    // Verifica se o Metamask está instalado
    if (window.ethereum) {
        web3 = new Web3(window.ethereum);
        await window.ethereum.request({ method: 'eth_requestAccounts' });
    } else {
        alert("Por favor, instale o Metamask!");
        return;
    }

    const contract = new web3.eth.Contract(contractABI, contractAddress);
    document.getElementById('transactionForm').addEventListener('submit', async (event) => {
        event.preventDefault();
        const to = document.getElementById('to').value;
        const serviceOffered = document.getElementById('serviceOffered').value;
        const hoursOffered = document.getElementById('hoursOffered').value;
        const serviceReceived = document.getElementById('serviceReceived').value;
        const hoursReceived = document.getElementById('hoursReceived').value;

        const accounts = await web3.eth.getAccounts();
        await contract.methods.createTransaction(to, serviceOffered, hoursOffered, serviceReceived, hoursReceived).send({ from: accounts[0] });

        loadTransactions();
    });

    loadTransactions();
}

async function loadTransactions() {
    const contract = new web3.eth.Contract(contractABI, contractAddress);
    const count = await contract.methods.getTransactionCount().call();
    const transactionList = document.getElementById('transactionList');
    transactionList.innerHTML = '';

    for (let i = 0; i < count; i++) {
        const transaction = await contract.methods.getTransaction(i).call();
        const listItem = document.createElement('li');
        listItem.textContent = `${transaction.from} trocou ${transaction.serviceOffered} por ${transaction.serviceReceived} em ${new Date(transaction.date * 1000).toLocaleString()}`;
        transactionList.appendChild(listItem);
    }
}

window.addEventListener('load', init);
