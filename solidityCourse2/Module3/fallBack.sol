// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract fallBack{
    event log(uint gas);
    fallback() external payable{
        emit log(gasleft());
    }
    function balance() public view returns(uint){
        return address(this).balance;
    }
}

contract sendToFallBack{
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }
    function callFallback(address payable _to) public payable {
        (bool sent,)=_to.call{value:msg.value}('');
        require(sent,'Failed to send');
    }
}