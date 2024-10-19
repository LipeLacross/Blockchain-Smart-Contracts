# Atividade de Experimentação 23
# Utilizar um modelo de IA para prever as necessidades de recursos para futuros projetos de construção
# e automatizar a alocação desses recursos usando contratos inteligentes.

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestRegressor

# Coleta de dados
data = {
    'project_size': [1000, 2000, 1500, 2500, 3000],
    'duration': [30, 45, 20, 35, 50],
    'material_needed': [100, 200, 150, 250, 300],
    'labor_needed': [10, 15, 8, 12, 20]
}

# Criando um DataFrame
df = pd.DataFrame(data)

# Preparação dos dados
X = df[['project_size', 'duration']]
y_material = df['material_needed']
y_labor = df['labor_needed']

X_train, X_test, y_train_material, y_test_material = train_test_split(X, y_material, test_size=0.2, random_state=42)
X_train, X_test, y_train_labor, y_test_labor = train_test_split(X, y_labor, test_size=0.2, random_state=42)

# Desenvolvimento do Modelo Preditivo
material_model = RandomForestRegressor()
material_model.fit(X_train, y_train_material)

labor_model = RandomForestRegressor()
labor_model.fit(X_train, y_train_labor)

# Previsão
predicted_material = material_model.predict(X_test)
predicted_labor = labor_model.predict(X_test)

# Implementação do Contrato Inteligente
# Automatizar a alocação desses recursos usando contratos inteligentes em Solidity.
