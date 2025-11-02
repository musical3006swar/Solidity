// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract changeArray{
    uint[] _changeArray;
    function removeElement(uint i) public{
        _changeArray[i]=_changeArray[_changeArray.length-1];
    }
    function pop() public returns(uint[] memory){
        _changeArray.pop();
        return _changeArray;
    }
    function test() public{
        for(uint i=1;i<=4;i++){
            _changeArray.push(i);
        }
    }
}