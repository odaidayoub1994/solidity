// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constants {
    // Dynamic size
    uint[] public  nums1;
    uint[] public  nums2 = [1, 2, 3];

    // Fixed size
    uint[4] public numsFixed1;
    uint[4] public numsFixed2 = [5, 6, 7, 8];

    function examples() external {
        nums2.push(4); // [1, 2, 3, 4]
        uint n = nums2[1];
        nums2[2] = 8; // [1, 2, 8, 4]
        delete nums2[0]; // [0, 2, 8, 4]
        nums2.pop(); // [0, 2, 8]
        uint len = nums2.length;


        // Create array in memory "Array in memory has to be a fixed size"
        uint[] memory memoryArray = new uint[](8); // not able to use pop() and push()
        memoryArray[0] = 1;
    }

    // Return array from function "Not recommended"
    function returnArray() external view returns (uint[] memory){
        return nums2;
    }
}