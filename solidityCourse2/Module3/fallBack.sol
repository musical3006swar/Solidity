// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract fallBack{
    event log(uint gas);
    fallback() external{
        emit log(gasleft());
    }
    function balance() public view returns(uint){
        return address(this).balance;
    }
}