// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract GenerateRandomNumber{
    Oracle public oracle;
    constructor(address _oracleAddress){
        oracle=Oracle(_oracleAddress);
    }
    function randGen(uint range) public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.timestamp,block.prevrandao,msg.sender,oracle.rand())))%range;//block.prevrandao is completely identical to block.difficulty
    }
}

contract Oracle{
    address admin;
    uint public rand;
    constructor(){
        admin=msg.sender;
    }
    function assign(uint num) public {
        require(admin==msg.sender,"Cannot proceed");
        rand=num;
        
    }
}