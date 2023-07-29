// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ValueTypes {
    string public myName = "Odai Dayoub";
    uint public  myAge  = 29; // uint = uint256 
    address public myAddress = 0x03a02F3De9bbf0C29cb9C318b132aE5614390807;
    bool public male = true;
    int  public i = -1 ; // int = int256
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    bytes32 public b32 = 0x89c58ced8a9078bdef2bb60f22e58eeff7dbfed6c2dff3e7c508b629295926fa;
}
