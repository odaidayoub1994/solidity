// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Build a simple contract that allows the current owner to transfer ownership.

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "Invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanCall() external onlyOwner {
        // code
    }

    function anyOneCanCall() external {
        // code
    }
}