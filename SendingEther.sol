//SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract SendingEther {
    // function to recieve Ether. msg.data must be empty
    receive() external payable {}

    //fallback function is called when msg.data is not empty

    fallback() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure
        // This function is not recommended for sending ether
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failture
        // This is the current recommend method to use;

        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
