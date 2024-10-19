// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Atividade de experimentação 15:
// Como podemos implementar um contrato inteligente em Solidity para registrar e rastrear registros médicos no Hospital SaúdeTech?

contract RegistroMedico {
    struct Registro {
        string nomePaciente;
        string historicoMedico;
        uint256 dataRegistro; // Timestamp do registro
    }

    // Mapeia o endereço do paciente para seus registros médicos
    mapping(address => Registro[]) private registros;

    // Evento para notificar novos registros
    event NovoRegistro(address indexed paciente, string nomePaciente);

    // Função para adicionar um novo registro médico
    function adicionarRegistro(string memory _nomePaciente, string memory _historicoMedico) public {
        Registro memory novoRegistro = Registro({
            nomePaciente: _nomePaciente,
            historicoMedico: _historicoMedico,
            dataRegistro: block.timestamp // Registra a data atual
        });

        registros[msg.sender].push(novoRegistro); // Adiciona o registro para o paciente
        emit NovoRegistro(msg.sender, _nomePaciente); // Emite um evento
    }

    // Função para obter registros médicos de um paciente
    function obterRegistros() public view returns (Registro[] memory) {
        return registros[msg.sender]; // Retorna os registros do chamador
    }
}
