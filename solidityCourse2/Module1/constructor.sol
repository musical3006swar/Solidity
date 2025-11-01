// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base{
    uint num;
    constructor(uint _num){
        num=_num;
    }
}

contract Derived is Base{
    constructor(uint n) Base(n){

    }
    function showNum() public view returns(uint){
        return num;
    }
}
