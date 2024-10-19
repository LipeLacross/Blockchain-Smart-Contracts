# Troca de Serviços

Este projeto é um sistema de troca de serviços que utiliza blockchain para registrar transações de forma transparente e imutável. Os membros da comunidade podem registrar e verificar todas as trocas realizadas.

## Estrutura do Projeto

- **contract/**: contém o contrato inteligente em Solidity.
- **frontend/**: contém os arquivos HTML, CSS e JavaScript para a interface do usuário.

## Instruções de Uso

1. Instale o Metamask e conecte-se à rede de testes do Ethereum (Rinkeby, Goerli, etc.).
2. Compile e implante o contrato `ServiceExchange.sol` na rede de testes.
3. Substitua `COLOQUE_AQUI_O_ENDEREÇO_DO_SEU_CONTRATO` e a `ABI gerada após o deploy do contrato` no arquivo `app.js`.
4. Abra `index.html` no seu navegador e interaja com o sistema.

## Dependências

- [Web3.js](https://github.com/ethereum/web3.js/)

## Observações

- As transações são registradas em um array dentro do contrato, e cada transação contém informações detalhadas, como quem ofereceu e recebeu o serviço, além de uma data de registro.
- A interface permite que qualquer membro da comunidade visualize as transações registradas.
