//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract Array{
    uint256[] arr;
    function add(uint256 ele) public{
        arr.push(ele);
    }
    function getIdx(uint8 idx)public view returns(uint256){
        return arr[idx];
    }
}