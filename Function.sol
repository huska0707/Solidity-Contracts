// SPDX-License-Identifer: MIT

pragma solidity ^0.8.24;

contract Function {
    function returnMany() public pure returns (uint256, bool, uint256) {
        return (1, true, 2);
    }

    function destructuringAssignments()
        public
        pure
        returns (uint256, bool, uint256, uint256, uint256)
    {
        (uint256 i, bool b, uint256 j) = returnMany();

        (uint256 x,,uint256 y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    function arrayInput(uint256[] memory _arr) public {}

    uint256[] public arr;
    
    function arrayOutput() public view returns(uint256[] memory) {
        return arr;
    } 
}
