// Atividade de Experimentação 24
// Contrato que registra e verifica os dados de sensores IoT para monitorar as condições do solo, clima e crescimento das plantas.

pragma solidity ^0.8.0;

contract SensorMonitoring {
    struct SensorData {
        uint256 moisture;
        uint256 temperature;
        uint256 nutrientLevel;
        uint256 timestamp;
    }

    mapping(uint256 => SensorData) public sensorData;
    uint256 public nextDataId;

    event DataRecorded(uint256 dataId, uint256 moisture, uint256 temperature, uint256 nutrientLevel, uint256 timestamp);

    function recordData(uint256 _moisture, uint256 _temperature, uint256 _nutrientLevel) public {
        sensorData[nextDataId] = SensorData(_moisture, _temperature, _nutrientLevel, block.timestamp);
        emit DataRecorded(nextDataId, _moisture, _temperature, _nutrientLevel, block.timestamp);
        nextDataId++;
    }
}
