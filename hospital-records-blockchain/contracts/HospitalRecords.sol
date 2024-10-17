// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HospitalRecords {
    struct Patient {
        string name;
        string height;
        string weight;
        string age;
        string bloodGroup;
    }

    Patient[] public patients;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function addPatient(
        string memory _name,
        string memory _height,
        string memory _weight,
        string memory _age,
        string memory _bloodGroup
    ) public payable {
        require(msg.value == 0.01 ether, "Must pay exactly 0.01 ETH to add a patient record");
        patients.push(Patient(_name, _height, _weight, _age, _bloodGroup));
    }

    function getPatientsCount() public view returns (uint) {
        return patients.length;
    }

    function getPatient(uint index) public view returns (string memory, string memory, string memory, string memory, string memory) {
        require(index < patients.length, "Invalid patient index");
        Patient memory patient = patients[index];
        return (patient.name, patient.height, patient.weight, patient.age, patient.bloodGroup);
    }
}
