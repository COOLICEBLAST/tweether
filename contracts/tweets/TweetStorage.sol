// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TweetStorage {

  mapping(uint => Tweet) public tweets;

  struct Tweet {
    uint id;
    string text;
    uint userId;
    uint postedAt;
  }

  uint latestTweetId = 0;

  function createTweet(uint _userId, string memory _text) public returns(uint) {
    latestTweetId++;

    tweets[latestTweetId] = Tweet(latestTweetId, _text, _userId, block.timestamp);

    return latestTweetId;
  }

}