// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// require, revert, assert
// - gas refund, state updates are reverted
// custom error - save gas
contract ErrorHandling {
    function testRequire(uint256 _i) public pure {
        require(_i <= 10, "i > 10");
        // code
    }

    function testRevert(uint256 _i) public pure {
        if (_i > 10) {
            revert("i > 10");
        }
    }

    uint256 public num = 100;

    function testAssert() public view {
        assert(num == 100);
    }

    error MyError(address caller, uint256 i);

    function testCustomError(uint256 _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
