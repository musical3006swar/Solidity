// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract test{

    modifier onlyOwner{
        require(true);
        _;
    }

    function returnFunds() public onlyOwner returns(bool success){
        for(uint i=0;i<funders.length;i++){
            funders[i].transfer(contributedamount);
        }
        return true;
    }
}

