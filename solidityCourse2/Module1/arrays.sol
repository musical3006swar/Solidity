// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract changeArray{
    uint[] _changeArray;

    // if(_changeArray.length>0){
    //     for(uint i=0;i<_changeArray.length;i++){
    //         if(_changeArray[i]==2)_changeArray.removeElement(i);
    //     }
    // }
    function removeElement(uint i) public {
        _changeArray[i]=_changeArray[_changeArray.length-1];
        _changeArray.pop();
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
    function show() public view returns(uint[] memory){
        return _changeArray;
    }
}