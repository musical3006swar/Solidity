// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RestrictedAccess{
    address public owner = msg.sender;
    uint public creationTime= block.timestamp;

    modifier onlyBy(address account){
        require(msg.sender==account,"User not Authorized!!!");
        _;
    }

    function changeOwner(address own) onlyBy(owner) public{
        owner=own;

    }
}