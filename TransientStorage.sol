// Transient Storage
// Data stored in transient storage is cleared out after transaction

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// storage is stored on the blockchain
// memory is cleared out after the function call
// transient storage is cleared out after transaction

interface ITest {
    function val() external view returns (uint256);
    function test() external;
}

contract Callback {
    uint256 public val;

    fallback() external {
        val = ITest(msg.sender).val();
    }

    function test(address target) external {
        ITest(target).test();
    }
}

contract TransientStorage {}
