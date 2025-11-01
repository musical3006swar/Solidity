// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract changeOfOwner{
    address public owner;
    constructor(){
        owner=msg.sender;
    }
    modifier ownerCheck(){
        require(msg.sender==owner,"You are not the owner");
        _;
    }
    function changeOwner(address newOwner) public ownerCheck(){
        owner=newOwner;
    }
    function whosTheOwner() public view returns(address){
        return owner;
    } 
}