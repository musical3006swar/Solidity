// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract array{
    uint[] public arr;
    uint[] public arr2=[1,2,3,4,5,6,7,8,9,10];
    function getEle(uint eleIdx)  public view returns(uint){
        return arr2[eleIdx];
    }
    function addEle(uint value) public{
        arr.push(value);
    }
    
} 