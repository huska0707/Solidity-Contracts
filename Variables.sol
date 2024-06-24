//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Variables {
    // State variables are stored to the blockchain
    string public text = "hello";
    uint256 public num = 123;

    function doSomething() public {
        //Local varaiable are not saved to the blochchain
        uint256 i = 456;
        
        // Some global variables    
        uint256 timestamp = block.timestamp;  // Current block timestamp
        address sender = msg.sender; // address of sendere
    }
}