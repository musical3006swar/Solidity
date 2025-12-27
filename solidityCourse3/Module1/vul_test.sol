// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract victim{
    function isItAContract() public view returns(bool){
        uint size;
        address a = msg.sender;
        assembly {
            size:=extcodesize(a)
        }
        return(size>0);
    }
}


contract attacker {
    bool public trickedYou;
    victim Victim;
    constructor(address _v){
        Victim =victim(_v);
        trickedYou=!Victim.isItAContract();
    }
}