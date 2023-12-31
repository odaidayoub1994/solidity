// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Struct {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 2020, msg.sender);

        Car memory lambo = Car({
            model: "Lamborghini",
            year: 2022,
            owner: msg.sender
        });

        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2023;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2021, msg.sender));

        Car storage _car = cars[0];

        // Update
        _car.year = 2023;

        // Delete
        delete _car.owner;
        delete cars[1];
    }
}