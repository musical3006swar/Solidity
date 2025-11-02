// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract structure{
    struct Movie{
        string title;
        string director;
        uint id;
    }
    Movie movie;
    function setMovie() public{
        movie=Movie("Batla House","Swar",3);
    }
    function getMovieId() public view returns(uint){
        return movie.id;
    }

    function setNewMovie(string memory n, string memory t,uint i) public returns(uint){
        movie=Movie(n,t,i);
        return movie.id;
    }
    Movie comedy;
    function setComMovie(string memory n, string memory t,uint i) public returns(uint){
        comedy=Movie(n,t,i);
        return comedy.id;
    }

}

