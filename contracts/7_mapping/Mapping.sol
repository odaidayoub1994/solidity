// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Mapping
// How to declare a mapping
// Set, get, delete

contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function example() external {
        balances[msg.sender] = 1000;
        uint bal = balances[msg.sender]; // 1000

        uint bal2 = balances[address(1)]; // 0

        balances[msg.sender] += 500; // 1000 + 500 = 1500

        delete balances[msg.sender]; // 0
    }
}