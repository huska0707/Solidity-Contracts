//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DataLocations {
    uint256[] public arr;

    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }

    mapping(uint256 => MyStruct) myStructs;

    function f() public {
        _f(arr, map, myStructs[1]);

        // get a struct from mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {

    }

    function g(uint256[] memory _arr) public view returns(uint256[] memory) {
        // do something with memory array
    }

    function h(uint256[] calldata _arr) external {
        // do something with memory array
    }
}

// Variables are declared as either storage, memory, Calldata to explicitly specify the location of the data;
// - storage: variable is state variable(store in the blockchain)
// - memory: variable is in memory and it exist while a function is  being called.
// - Calldata: special data location that contains a function argument.
