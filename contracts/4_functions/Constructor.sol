// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Function modifier - reuse code before and / or after function
// Basic, inputs, sandwich

contract Constructor {
    address public owner;
    uint256 public age;

// Constructor is a special function called only once when the contract is deployed, usually used to initialize state variables.
    constructor(uint256 _x) {
        owner = msg.sender;
        age = _x;
    }
}
