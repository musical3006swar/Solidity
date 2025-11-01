//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract twitter{
    mapping(address=>string[])public tweets;
    function createTweet(string memory tweet) public {
        tweets[msg.sender].push(tweet);
    }
    function getTweetIdx(address owner, uint idx) public view returns(string memory){
        return tweets[owner][idx];
    }
    function getAllTweet(address owner)public view returns(string[] memory){
        return tweets[owner];
    }

}