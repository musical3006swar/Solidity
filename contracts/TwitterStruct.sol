//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Twitter{
    struct Tweet{
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }


    mapping(address=>Tweet[])public tweets;
    function createTweet(string memory tweet) public {

        Tweet memory newTweet=Tweet({
            author:msg.sender,
            content: tweet,
            timestamp:block.timestamp,
            likes:0
        });


        tweets[msg.sender].push(newTweet);
    }
    function getTweetIdx(address owner, uint idx) public view returns(Tweet memory){
        return tweets[owner][idx];
    }
    function getAllTweet(address owner)public view returns(Tweet[] memory){
        return tweets[owner];
    }

}