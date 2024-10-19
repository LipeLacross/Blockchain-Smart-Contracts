// Atividade de Experimentação 23
// Contrato que automatiza a alocação de recursos para projetos de construção.

pragma solidity ^0.8.0;

contract ResourceAllocation {
    struct Resource {
        uint256 projectId;
        uint256 materialAllocated;
        uint256 laborAllocated;
        bool isAllocated;
    }

    mapping(uint256 => Resource) public resources;
    uint256 public nextResourceId;

    event ResourcesAllocated(uint256 projectId, uint256 material, uint256 labor);

    function allocateResources(uint256 _projectId, uint256 _material, uint256 _labor) public {
        resources[nextResourceId] = Resource(_projectId, _material, _labor, true);
        emit ResourcesAllocated(_projectId, _material, _labor);
        nextResourceId++;
    }
}
