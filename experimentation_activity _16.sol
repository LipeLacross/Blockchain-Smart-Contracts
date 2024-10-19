// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Atividade de experimentação 16:
// Desenvolva um contrato inteligente em Solidity para registrar produtos com as seguintes informações:
// identificador único, nome do produto, descrição e endereço de quem adicionou o produto.
// O contrato deve permitir a adição de novos produtos e a consulta dos produtos registrados.

contract RegistroProdutos {
    struct Produto {
        uint256 id; // Identificador único
        string nome;
        string descricao;
        address adicionadoPor; // Endereço de quem adicionou o produto
    }

    mapping(uint256 => Produto) private produtos; // Mapeia o ID do produto para o produto
    uint256 private proximoId; // Contador para o próximo ID

    // Evento para notificar a adição de um novo produto
    event ProdutoAdicionado(uint256 id, string nome);

    // Função para adicionar um novo produto
    function adicionarProduto(string memory _nome, string memory _descricao) public {
        produtos[proximoId] = Produto({
            id: proximoId,
            nome: _nome,
            descricao: _descricao,
            adicionadoPor: msg.sender // Armazena o endereço do adicionador
        });

        emit ProdutoAdicionado(proximoId, _nome); // Emite um evento
        proximoId++; // Incrementa o ID para o próximo produto
    }

    // Função para obter informações sobre um produto
    function obterProduto(uint256 _id) public view returns (Produto memory) {
        require(_id < proximoId, "Produto não encontrado."); // Verifica se o produto existe
        return produtos[_id]; // Retorna as informações do produto
    }
}
