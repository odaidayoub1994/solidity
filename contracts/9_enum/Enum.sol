// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Enum {
    enum Status {
        none,
        pending,
        shipped,
        completed,
        rejected,
        canceled
    }

    Status public status;

    struct Order {
        address buyer;
        Status status;
    }

    Order[] public orders;

    function get() external view returns (Status) {
        return status;
    }

    function set(Status _status) external {
        status = _status;
    }

    function ship() external {
        status = Status.shipped;
    }

    function reset() external {
        delete status; // none
    }
}