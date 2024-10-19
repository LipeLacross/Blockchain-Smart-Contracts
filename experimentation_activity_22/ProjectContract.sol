// Atividade de Experimentação 22
// Contrato que monitora os prazos dos projetos e aplica penalidades automáticas em caso de atrasos.

pragma solidity ^0.8.0;

contract ProjectContract {
    struct Project {
        uint256 id;
        uint256 plannedDuration;
        uint256 actualDuration;
        bool isCompleted;
        address contractor;
    }

    mapping(uint256 => Project) public projects;
    uint256 public nextProjectId;

    event ProjectCreated(uint256 projectId, address contractor, uint256 plannedDuration);
    event PenaltyApplied(uint256 projectId, uint256 penaltyAmount);

    function createProject(address _contractor, uint256 _plannedDuration) public {
        projects[nextProjectId] = Project(nextProjectId, _plannedDuration, 0, false, _contractor);
        emit ProjectCreated(nextProjectId, _contractor, _plannedDuration);
        nextProjectId++;
    }

    function completeProject(uint256 _projectId, uint256 _actualDuration) public {
        Project storage project = projects[_projectId];
        require(msg.sender == project.contractor, "Only the contractor can complete the project.");

        project.actualDuration = _actualDuration;
        project.isCompleted = true;

        if (_actualDuration > project.plannedDuration) {
            uint256 penaltyAmount = (_actualDuration - project.plannedDuration) * 1000; // Exemplo de cálculo de penalidade
            emit PenaltyApplied(_projectId, penaltyAmount);
        }
    }
}
