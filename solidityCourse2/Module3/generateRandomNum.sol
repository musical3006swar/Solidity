// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract GenerateRandomNumber{
    function randGen(uint range) public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.timestamp,block.prevrandao,msg.sender)))%range;//block.prevrandao is completely identical to block.difficulty
    }
}