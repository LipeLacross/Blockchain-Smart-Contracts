// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ServiceExchange {
    struct Transaction {
        address from;        // Endereço do prestador de serviço
        address to;          // Endereço do recebedor de serviço
        string serviceOffered; // Descrição do serviço oferecido
        uint hoursOffered;    // Horas de serviço oferecido
        string serviceReceived; // Descrição do serviço recebido
        uint hoursReceived;    // Horas de serviço recebido
        uint date;            // Timestamp da transação
    }

    Transaction[] public transactions; // Array para armazenar as transações

    function createTransaction(
        address _to,
        string memory _serviceOffered,
        uint _hoursOffered,
        string memory _serviceReceived,
        uint _hoursReceived
    ) public {
        Transaction memory newTransaction = Transaction({
            from: msg.sender,    // O remetente é o chamador da função
            to: _to,
            serviceOffered: _serviceOffered,
            hoursOffered: _hoursOffered,
            serviceReceived: _serviceReceived,
            hoursReceived: _hoursReceived,
            date: block.timestamp
        });

        transactions.push(newTransaction); // Adiciona a nova transação ao array
    }

    function getTransaction(uint index) public view returns (
        address from,
        address to,
        string memory serviceOffered,
        uint hoursOffered,
        string memory serviceReceived,
        uint hoursReceived,
        uint date
    ) {
        Transaction memory t = transactions[index];
        return (t.from, t.to, t.serviceOffered, t.hoursOffered, t.serviceReceived, t.hoursReceived, t.date);
    }

    function getTransactionCount() public view returns (uint) {
        return transactions.length; // Retorna o número total de transações
    }
}
