// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Identity {
    string private name;
    uint private age;

    constructor() {
        name = "Kalyan";
        age = 34;
    }

    function getName() external view returns (string memory) {
        return name;
    }

    function getAge() external view returns (uint) {
        return age;
    }

    function incrementAge() external {
        unchecked {
            age += 1;
        }
    }
}
