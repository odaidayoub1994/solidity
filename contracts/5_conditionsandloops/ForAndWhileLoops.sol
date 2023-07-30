// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForAndWhileLoops {
    function forLoop() external pure {
        for (uint256 i = 0; i < 10; i++) {
            // code
            if (i == 4) {
                continue;
            }

            // more code
            if (i == 7) {
                break;
            }
        }
    }

    function calculateSum(uint256 _number) external pure returns (uint256) {
        uint256 sum;
        for (uint256 i = 0; i <= _number; i++) {
            sum += i;
        }
        return sum;
    }

    function whileLoop() external pure {
        uint256 j = 0;
        while (j < 10) {
            // code
            j++;
        }
    }
}
