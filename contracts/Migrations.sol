// contracts/Migrations.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Migrations {
    address public owner;
    uint public lastCompletedMigration;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function.");
        _;
    }

    function setCompleted(uint completed) public onlyOwner {
        lastCompletedMigration = completed;
    }
}
