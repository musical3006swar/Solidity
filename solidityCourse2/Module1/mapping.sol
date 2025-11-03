// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Mapping{
    mapping(address=>uint) public myMap;

    function addVal(address _myAdd, uint _i)public{
        myMap[_myAdd]=_i;
    }

    function showVal(address _adr)public view returns(uint){
        return myMap[_adr];
    }

    function deleteVal(address _adr)public{
        delete myMap[_adr];
    }
}