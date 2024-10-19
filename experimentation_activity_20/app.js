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

        await listarCandidatos();
    }
}

async function listarCandidatos() {
    const candidatos = document.getElementById('candidatos');
    const count = await contract.methods.candidatesCount().call();
    for (let i = 1; i <= count; i++) {
        const candidato = await contract.methods.candidates(i).call();
        const li = document.createElement('li');
        li.innerText = `${candidato.name} - Votos: ${candidato.voteCount}`;
        candidatos.appendChild(li);
    }
}

async function votar() {
    const id = document.getElementById('candidatoId').value;
    const accounts = await web3.eth.getAccounts();
    await contract.methods.vote(id).send({ from: accounts[0] });
    alert("Voto registrado!");
    listarCandidatos();
}

window.onload = init;



