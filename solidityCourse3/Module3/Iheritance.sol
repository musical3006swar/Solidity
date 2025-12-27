// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract A{
    uint innerSol=100;
    function innerAddTen(uint val) public pure returns(uint){
        return val+10;
    } 
}

contract B is A{
    function outerAddTen(uint amt) public pure returns(uint){
        return A.innerAddTen(amt);
    }
    function getInnerVal() public view returns(uint){
        return A.innerSol;
    }
}