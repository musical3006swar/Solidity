//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Students
{
    uint roll;
    string name;
}

contract StructureDemo{
    Students public s;
    constructor(uint _roll,string memory _name){
        s.roll = _roll;
        s.name = _name;
    }

    function change(uint _roll, string memory _name) public{
        Students memory new_s = Students({roll:_roll, name: _name});
        s = new_s;
    }
}