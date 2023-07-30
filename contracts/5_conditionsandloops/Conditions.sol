// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Conditions {
    function example(uint256 x) external pure returns (uint256) {
        if (x < 10) {
            return 1;
        } else if (x < 20) {
            return 2;
        }
        return 3;
    }

    function example2(uint256 x) external pure returns (uint256) {
        if (x < 10) {
            return 1;
        }
        return 2;
    }

    function example3(uint256 x) external pure returns (uint256) {
        return x < 10 ? 1 : 2;
    }
}