// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Mapping{
    struct Movie{
        string name;
        string director;
    }
    Movie movie;
    mapping(uint=>Movie) public myMap;

    function addMovie(string memory n, string memory t,uint _i) public{
        movie=Movie(n,t);
        myMap[_i]=movie;
    }
    function addMovie(uint _i) public  view returns(Movie memory){
        return myMap[_i];
        
    }
    
}