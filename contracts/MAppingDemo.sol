//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
struct Students

{
    uint class;
    string name;
}
contract MappingDemo
{
    mapping(uint => Students) public roll;
    function setData(uint _roll, uint _class, string memory _name) public {
        roll[_roll = Students(_class,_name)];
    }
}