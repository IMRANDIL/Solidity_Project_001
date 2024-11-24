pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

// 1. Create a Twitter Contract
// 2. Create a mapping between user and tweet 
// 3. Add function to create a tweet and save it in mapping
//4. Create a function to get Tweet
 


contract Twitter {
    mapping(address => string) public twets;

    function createTweet(string memory _tweet) public  {
        twets[msg.sender] = _tweet;
    }

    function getTweet(address _owner) public view returns (string memory){
        return twets[_owner];
    }
}