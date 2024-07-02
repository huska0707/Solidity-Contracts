//SPDX-License-Identifier: MIT;
pragma solidity ^0.8.24;

contract ViewAndPureFunctions {
    uint256 public x = 1;
    // promis not to modify the state
    function AddToX(uint256 y) public view returns (uint256) {
        return x + y;
    }
    // promise not to modify or read form the state
    function add(uint256 i, uint256 j) public pure returns (uint256) {
        return i + j;
    }
}
