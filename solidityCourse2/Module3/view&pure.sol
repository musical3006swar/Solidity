//SPDX-License-Identifier:MIT
pragma solidity ^0.8.2;

contract test{
    uint value;
    function giveVal(uint num) public returns(uint) {
        value=num;
        return value;
    }
    function mul() external pure returns(uint){
        return 3*7;
    }
    function plusThr() external view returns(uint){
        return value+3;
    }
}