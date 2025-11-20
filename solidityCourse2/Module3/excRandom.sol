// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract oracle{
    address admin;
    uint public rand;
    constructor(){
        admin=msg.sender;
    }
    function assign(uint num) public {
        rand=num;
        require(admin==msg.sender,"Cannot proceed");
        
    }
}