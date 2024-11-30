pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

// 1. Create a Twitter Contract
// 2. Create a mapping between user and tweet
// 3. Add function to create a tweet and save it in mapping
//4. Create a function to get Tweet

// create the struct of tweet way now

contract Twitter {
    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping(address => Tweet[]) public tweets;
    function createTweet(string memory _tweet) public {
        require(bytes(_tweet).length <= 280, "Tweet cannot be more than 280 characters");
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newTweet);
    }

    function getTweets() public view returns (Tweet[] memory) {
        return tweets[msg.sender];
    }

    function getSingleTweetByIdx(uint idx) public view returns(Tweet memory) {
        return tweets[msg.sender][idx];
    }
}
