// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageContextExample {
    address public sender;
    uint256 public value;
    uint256 public timestamp;

    constructor() {
        // Initialize contract state with message context information
        sender = msg.sender;       // The sender's address
        value = msg.value;         // Amount of Ether sent with the transaction
        timestamp = block.timestamp; // Timestamp of the current block
    }

    function getMessageContext() public view returns (address, uint256, uint256) {
        // Return message context information as a tuple
        return (sender, value, timestamp);
    }
}

