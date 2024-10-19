// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contrato simples para armazenar um valor inteiro
contract SimpleStorage {
    uint256 storedData;

    // Função para armazenar um valor
    function set(uint256 x) public {
        storedData = x;
    }

    // Função para recuperar o valor armazenado
    function get() public view returns (uint256) {
        return storedData;
    }
}
