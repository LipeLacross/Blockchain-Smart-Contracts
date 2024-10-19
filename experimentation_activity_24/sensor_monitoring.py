# Atividade de Experimentação 24
# Crie um contrato em Blockchain que utilize sensores IoT para monitorar as condições do solo, clima e crescimento das plantas.
# Blockchain para registrar e verificar os dados de sensores e IA para análise preditiva e otimização.

import random
import time

class SoilSensor:
    def __init__(self):
        self.moisture = 0
        self.temperature = 0
        self.nutrient_level = 0

    def read_data(self):
        self.moisture = random.uniform(0, 100)
        self.temperature = random.uniform(10, 35)
        self.nutrient_level = random.uniform(0, 100)
        return self.moisture, self.temperature, self.nutrient_level

# Simulação de leitura de dados
sensor = SoilSensor()
for _ in range(5):
    data = sensor.read_data()
    print(f"Moisture: {data[0]:.2f}, Temperature: {data[1]:.2f}, Nutrient Level: {data[2]:.2f}")
    time.sleep(1)  # Simula um intervalo entre leituras

# Implementação do Contrato Inteligente
# Usar Blockchain para registrar e verificar os dados de sensores e IA para análise preditiva e otimização.
