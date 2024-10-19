const Web3 = require('web3');
let web3;
let contract;

async function init() {
    // Conectar ao Ganache
    if (typeof window.ethereum !== 'undefined') {
        web3 = new Web3(window.ethereum);
        await window.ethereum.request({ method: 'eth_requestAccounts' });
        const networkId = await web3.eth.net.getId();

        const deployedNetwork = /* Insira a ABI e o endereço do contrato aqui */;
        contract = new web3.eth.Contract(deployedNetwork.abi, deployedNetwork.address);

        await listarPropriedades();
    }
}

async function registrarPropriedade() {
    const name = document.getElementById('propertyName').value;
    const accounts = await web3.eth.getAccounts();
    await contract.methods.registerProperty(name).send({ from: accounts[0] });
    alert("Propriedade registrada!");
    listarPropriedades();
}

async function listarPropriedades() {
    const properties = document.getElementById('properties');
    properties.innerHTML = ''; // Limpa a lista antes de listar novamente
    const count = await contract.methods.propertiesCount().call();
    for (let i = 1; i <= count; i++) {
        const property = await contract.methods.getProperty(i).call();
        const li = document.createElement('li');
        li.innerText = `Nome: ${property[0]}, Proprietário: ${property[1]}`;
        properties.appendChild(li);
    }
}

window.onload = init;
