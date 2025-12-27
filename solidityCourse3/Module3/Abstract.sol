// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract A{
    function y() public virtual  pure returns(string memory);
    
}

contract B is A{
    function y() public override pure returns(string memory){
        return "hello";
    }
}

