// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Owner{
    address owner;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender==owner);
        _;
    }
}

contract Register is Owner{
    mapping(address=>bool) registeredAddress;
    uint price;

    constructor(uint _initialPrice) {
        price=_initialPrice;
    }

    function register() public payable{
        registeredAddress[msg.sender]=true;
    }
    function changePrice(uint _price) public onlyOwner{
        price=_price;
    }
}