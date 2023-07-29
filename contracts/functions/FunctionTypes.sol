// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionTypes {
    uint256 public number;

    function inc() external {
        number += 1;
    }

    function viewFunc() external view returns (uint256) {
        return number;
    }

    function viewFunc1(uint256 num) external view returns (uint256) {
        return number + num;
    }

    function pureFunc() external pure returns (uint256) {
        return 1;
    }

    function pureFunc2(uint256 num1, uint256 num2)
        external
        pure
        returns (uint256)
    {
        return num1 + num2;
    }
}