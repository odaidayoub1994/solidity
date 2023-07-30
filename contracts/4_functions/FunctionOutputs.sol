// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// return multiple outputs
// Named outputs
// Destructuring assignment

contract FunctionOutputs {
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }

    function named() public pure returns (uint256 num, bool odd) {
        return (1, true);
    }

    function assigned() public pure returns (uint256 num, bool odd) {
        num = 1;
        odd = true;
    }

    function destructuringAssignments() public pure {
        (uint256 num, bool odd) = returnMany();

        (, bool _odd) = returnMany();
    }
}