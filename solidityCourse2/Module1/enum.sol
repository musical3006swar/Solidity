// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract shirt{
    enum myShirt {Red, White, Green}
    myShirt constant defaultChoice=myShirt.Green;
    myShirt shirtColour;
    function setWhite() public{
        shirtColour=myShirt.White;
    }
    function getChoice() public view returns(myShirt){
        return shirtColour;
    }
    function getDefault() public pure returns(uint){
        return uint(defaultChoice);
    }
}