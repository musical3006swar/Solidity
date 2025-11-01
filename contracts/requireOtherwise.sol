//  SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract check{

    uint public x=90;
    function checkVal(uint256 val) public {
        require(val<=x,"Greater");
        x=val;
    }
}