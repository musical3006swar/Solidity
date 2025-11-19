// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract  dest{
    uint public num;
    bool public what;
    string public yup;
    function give() public pure returns(uint,bool,string memory){
        return (18,true,'Virat Kohli');
    }
    function assign()public{
        (, , yup)=give();
    }
}