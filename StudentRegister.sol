// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract StudentRegistration {

    struct Student {
        string name;
        uint256 note;
    }

    Student[] public listOfStudents;

    function addStudent(string memory _nombre, uint256 _nota) public {
        listOfStudents.push(Student(_nombre, _nota));
    }

    function getTotalStudents() public view returns (uint256) {
        return listOfStudents.length;
    }
}