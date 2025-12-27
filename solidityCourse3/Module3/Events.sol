// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract transfer{
    event newTrade(
        uint indexed  date,
        address from,
        address indexed to,
        uint amount
    );

    function send(address to, uint amount) external {
        emit newTrade(block.timestamp, msg.sender, to, amount);
    }
}