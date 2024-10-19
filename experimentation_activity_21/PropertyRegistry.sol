// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PropertyRegistry {
    struct Property {
        string name;
        address owner;
    }

    mapping(uint => Property) public properties;
    uint public propertiesCount;

    function registerProperty(string memory _name) public {
        propertiesCount++;
        properties[propertiesCount] = Property(_name, msg.sender);
    }

    function getProperty(uint _id) public view returns (string memory, address) {
        Property memory property = properties[_id];
        return (property.name, property.owner);
    }
}
