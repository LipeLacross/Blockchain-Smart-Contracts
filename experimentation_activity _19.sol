    /*
    Atividade de Experimentação 19 ●●
    Desenvolva um contrato inteligente em Solidity que utilize Chainlink para verificar condições climáticas e acionar um pagamento de seguro baseado em um evento climático. O contrato deve ser capaz de:

    - Solicitar dados climáticos de um oráculo Chainlink: o contrato deve fazer uma solicitação de dados climáticos para uma localização específica e receber as informações necessárias para determinar se as condições do evento climático foram atendidas.

    - Processar os dados recebidos do oráculo: o contrato deve implementar uma função de callback para processar os dados recebidos e verificar se as condições climáticas especificadas (por exemplo, temperatura acima de um determinado valor) foram atingidas.

    - Acionar um pagamento de seguro: se as condições climáticas forem atendidas, o contrato deve acionar um pagamento de seguro ao segurado.

    - Permitir a configuração do segurado e financiamento do contrato: o contrato deve permitir que o endereço do segurado seja configurado e deve ser possível enviar ETH ao contrato para financiar os pagamentos de seguro.
    */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";

contract SeguroClimatico is ChainlinkClient {
    using Chainlink for Chainlink.Request;

    uint256 public temperaturaLimite;
    address public segurado;
    uint256 public valorSeguro;

    event PagamentoSegurado(address segurado, uint256 valor);

    constructor(address _segurado, uint256 _valorSeguro, uint256 _temperaturaLimite) {
        setPublicChainlinkToken();
        segurado = _segurado;
        valorSeguro = _valorSeguro;
        temperaturaLimite = _temperaturaLimite;
    }

    function solicitarDadosClimaticos(string memory _localizacao) public {
        Chainlink.Request memory req = buildChainlinkRequest("YOUR_ORACLE_JOB_ID", address(this), this.processarDados.selector);
        req.add("q", _localizacao);
        req.add("format", "json");
        sendChainlinkRequestTo("YOUR_ORACLE_ADDRESS", req, 0.1 * 10 ** 18); // Exemplo de pagamento em LINK
    }

    function processarDados(bytes32 _requestId, uint256 _temperatura) public recordChainlinkFulfillment(_requestId) {
        if (_temperatura > temperaturaLimite) {
            acionarPagamento();
        }
    }

    function acionarPagamento() internal {
        require(address(this).balance >= valorSeguro, "Saldo insuficiente para pagamento.");
        payable(segurado).transfer(valorSeguro);
        emit PagamentoSegurado(segurado, valorSeguro);
    }

    // Função para receber fundos para financiar o contrato
    receive() external payable {}

}
