//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract IfElse {
    function foo(uint256 x) public pure returns (uint256) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ferteny(uint256 _x) public pure returns (uint256) {
        return _x < 10 ? 1 : 2;
    }

    function loop() public {
        for (uint256 i = 0; i < 10; i++) {
            // skip to the  next iteration with continue
            if (i == 3) {
                continue;
            }
            // Exit loop with break
            if (i == 7) {
                break;
            }
        }

        uint256 j;

        while (j < 10) {
            j++;
        }
    }
}
