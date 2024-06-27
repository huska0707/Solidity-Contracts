//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./EnumDeclaration.sol";

contract Enum {
    // Enum representing shipping status
    
    /*
    enum Status {
        pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    } */

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    // Returns uint
    // Pending - 0
    // Shipped - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    function get() public view returns (Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canceled;
    }

    function reset() public {
        delete status;
    }
}