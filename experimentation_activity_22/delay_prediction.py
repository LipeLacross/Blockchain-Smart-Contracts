# Atividade de Experimentação 22
# A Construtora ABC enfrenta desafios frequentes com atrasos nos projetos de construção.
# Eles desejam usar IA para prever possíveis atrasos com antecedência e implementar contratos inteligentes que penalizem automaticamente os atrasos, incentivando a conclusão pontual dos projetos.
# Coleta de Dados: Dados históricos dos projetos (prazo planejado, prazo real, valor do contrato, complexidade do projeto).

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score

# Coleta de dados
data = {
    'planned_duration': [30, 45, 20, 35, 50],
    'actual_duration': [32, 50, 22, 36, 55],
    'contract_value': [100000, 150000, 70000, 120000, 180000],
    'complexity': [2, 3, 1, 2, 3],  # 1: baixa, 2: média, 3: alta
    'delay': [1, 1, 0, 1, 1]  # 1: atraso, 0: no prazo
}

# Criando um DataFrame
df = pd.DataFrame(data)

# Preparação dos dados
X = df[['planned_duration', 'contract_value', 'complexity']]
y = df['delay']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Desenvolvimento do Modelo Preditivo
model = RandomForestClassifier()
model.fit(X_train, y_train)

# Previsão
predictions = model.predict(X_test)
accuracy = accuracy_score(y_test, predictions)
print(f'Accuracy: {accuracy:.2f}')

# Implementação do Contrato Inteligente
# Criar um contrato inteligente em Solidity que monitore os prazos dos projetos e aplique penalidades automáticas em caso de atrasos.
