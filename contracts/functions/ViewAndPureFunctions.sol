// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ViewAndPureFunctions {
    uint public number;

    function viewFunc() external view returns(uint){
        return number;
    }

    function viewFunc1(uint num) external view returns(uint){
        return number + num;
    }

    function pureFunc() external pure returns(uint){
        return 1;
    }

    function pureFunc2(uint num1, uint num2) external pure returns(uint){
        return num1 + num2;
    }
}