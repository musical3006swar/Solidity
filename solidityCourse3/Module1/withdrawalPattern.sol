// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Withdrawal {

    mapping(address => uint) public balance;

    function deposit() public payable {
        balance[msg.sender] += msg.value;
    }

    function withdrawalFunds(uint amt) public returns (bool) {
        require(balance[msg.sender] >= amt, "Insufficient balance");

        balance[msg.sender] -= amt;

        payable(msg.sender).transfer(amt);
        return true;
    }
}
