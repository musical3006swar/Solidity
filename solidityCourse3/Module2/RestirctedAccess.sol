// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RestrictedAccess{
    address public owner = msg.sender;
    uint public creationTime= block.timestamp;

    modifier onlyBy(address account){
        require(msg.sender==account,"User not Authorized!!!");
        _;
    }

    modifier onlyAfter(uint time){
        require(block.timestamp>=time,"Too early");
        _;
    }

    modifier costs(uint cost){
        require(msg.value>cost,"Not enough ether's");
        _;
    }

    function changeOwner(address own) onlyBy(owner) public{
        owner=own;

    }
    function disown() onlyBy(owner) onlyAfter(creationTime+3 weeks) public{
        delete owner;
    }

    function forceChangeOwner(address newOwner) payable public costs(200 ether){
        owner=newOwner;
    }
}