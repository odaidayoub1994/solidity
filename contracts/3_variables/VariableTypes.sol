// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract VariableTypes {
    // State variables are variables whose values are permanently stored in contract storage.
    uint256 public myAge = 29; // State variable

    function isValidAge(uint256 age) external pure returns (bool) {
        // Local variable
        uint256 validAge = 18;
        
        if (age >= validAge) {
            return true;
        }
        return false;
    }

    function globalVars() external view returns (address) {
        // msg.sender is global variable
        address sender = msg.sender;
        uint256 validAge = 18;
        
        if (myAge >= validAge) {
            return sender;
        }
        return address(1);
    }
}