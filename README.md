## 🌐 [English Version of README](README_EN.md)

# Blockchain-Smart-Contracts

Este projeto visa desenvolver um sistema de gestão e análise de estações de tratamento, utilizando tecnologias como contratos inteligentes, inteligência artificial e interfaces web. O sistema permite a interação com diversas funcionalidades, incluindo votação, registro de propriedades, previsão de atrasos em projetos, alocação de recursos, monitoramento de sensores IoT e troca de serviços entre usuários.

## 🔨 Funcionalidades do Projeto

- **Sistema de Votação**: Permite que usuários votem em candidatos. Inclui listagem e contagem de votos.
- **Registro de Propriedades**: Os usuários podem registrar propriedades e visualizar as propriedades registradas.
- **Previsão de Atrasos**: Um sistema que utiliza IA para prever atrasos em projetos de construção com base em dados históricos.
- **Alocação de Recursos**: Previsão das necessidades de recursos para projetos de construção, automatizando a alocação com contratos inteligentes.
- **Monitoramento de Sensores IoT**: Utiliza sensores para monitorar as condições do solo e clima, registrando dados em uma blockchain.
- **Troca de Serviços**: Um sistema que permite aos usuários trocar serviços entre si, registrando transações na blockchain.

## ✔️ Técnicas e Tecnologias Utilizadas

- **Solidity**: Linguagem de programação para o desenvolvimento de contratos inteligentes na Ethereum.
- **JavaScript**: Linguagem utilizada para a lógica de frontend.
- **HTML/CSS**: Estrutura e estilização do frontend.
- **Python**: Usado para análises de dados e modelos preditivos com IA.
- **Web3.js**: Biblioteca para interação com a blockchain Ethereum.
- **Ganache**: Para desenvolvimento e teste de contratos inteligentes.

## 📁 Estrutura do Projeto

- **README.md**: Documentação principal do projeto.
- **experimentation_activity_15.sol**: Contrato inteligente da atividade 15.
- **experimentation_activity_16.sol**: Contrato inteligente da atividade 16.
- **experimentation_activity_19.sol**: Contrato inteligente da atividade 19.
- **experimentation_activity_20/**: Diretório da atividade 20.
    - **Voting.sol**: Contrato inteligente para o sistema de votação.
    - **app.js**: Lógica de frontend da aplicação de votação.
    - **index.html**: Página HTML principal da aplicação de votação.
- **experimentation_activity_21/**: Diretório da atividade 21.
    - **PropertyRegistry.sol**: Contrato inteligente para o registro de propriedades.
    - **app.js**: Lógica de frontend do registro de propriedades.
    - **index.html**: Página HTML principal do registro de propriedades.
- **experimentation_activity_22/**: Diretório da atividade 22.
    - **ProjectContract.sol**: Contrato inteligente para gerenciamento de projetos.
    - **delay_prediction.py**: Script Python para previsão de atrasos em projetos.
- **experimentation_activity_23/**: Diretório da atividade 23.
    - **ResourceAllocation.sol**: Contrato inteligente para alocação de recursos.
    - **resource_prediction.py**: Script Python para previsão de necessidades de recursos.
- **experimentation_activity_24/**: Diretório da atividade 24.
    - **SensorMonitoring.sol**: Contrato inteligente para monitoramento de sensores.
    - **sensor_monitoring.py**: Script Python para simulação de leitura de dados do solo.
- **experimentation_activity_25/**: Diretório da atividade 25.
    - **SimpleStorage.sol**: Contrato inteligente para armazenamento simples.
- **experimentation_activity_Final/**: Diretório da atividade final.
    - **contract/**: Diretório dos contratos da atividade final.
        - **ServiceExchange.sol**: Contrato inteligente para troca de serviços.
    - **frontend/**: Diretório do frontend da atividade final.
        - **README.md**: Documentação do frontend.
        - **README_EN.md**: Documentação do frontend em inglês.
        - **app.js**: Lógica de frontend do sistema de troca de serviços.
        - **index.html**: Página HTML principal do sistema de troca de serviços.
        - **style.css**: Estilos CSS para a aplicação.
- **text_activities.md**: Atividades descritas em português.
- **text_activities_en.md**: Atividades descritas em inglês.

## 🛠️ Abrir e Rodar o Projeto

Para iniciar o projeto localmente, siga os passos abaixo:

1. **Certifique-se de que o Node.js está instalado**:
    - O [Node.js](https://nodejs.org/) é necessário para rodar o projeto. Você pode verificar se já o tem instalado com:

      ```bash
      node -v
      ```

    - Se não estiver instalado, baixe e instale a versão recomendada.

2. **Clone o Repositório**:
    - Copie a URL do repositório e execute o comando abaixo no terminal:

      ```bash
      git clone <URL_DO_REPOSITORIO>
      ```

3. **Instale as Dependências**:
    - Navegue até o diretório do projeto e instale as dependências necessárias com:

      ```bash
      npm install
      ```

4. **Inicie o Servidor**:
    - Inicie o servidor para visualizar o projeto no navegador com:

      ```bash
      npm start
      ```

## 🌐 Deploy

1. **Escolha uma plataforma** (ex: Heroku, Vercel).
2. **Crie um novo projeto** na plataforma.
3. **Carregue os arquivos** do projeto.
4. **Configure variáveis de ambiente** (se necessário).
5. **Teste a URL gerada** para verificar se está funcionando.
