    /*
    Atividade 19:
    Como desenvolver e integrar um contrato inteligente para gerenciamento de notas de alunos utilizando Web3.js e Ganache?
    Parte 1: Contrato Inteligente
    Crie um contrato inteligente em Solidity chamado Grades.sol que permita registrar notas para alunos.
    Compile e implante o contrato utilizando Truffle e Ganache.
    Parte 2: Frontend
    Crie um frontend simples utilizando HTML e JavaScript.
    Utilize a biblioteca Web3.js para conectar-se ao Ganache.
    Implemente a funcionalidade para registrar notas e consultar notas de alunos na interface web.
    Teste a aplicação garantindo que as interações entre o frontend e o contrato inteligente implantado no Ganache funcionem corretamente.
    */
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;
    mapping(address => bool) public voters;
    uint public candidatesCount;

    constructor() {
        addCandidate("Candidato 1");
        addCandidate("Candidato 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender], "Você já votou.");
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Candidato inválido.");

        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;
    }
}
