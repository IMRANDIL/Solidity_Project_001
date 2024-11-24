const Twitter = artifacts.require("./Twitter.sol");

contract("Twitter", accounts => {
  it("...should store the value of a tweet.", async () => {
    const twitterInstance = await Twitter.deployed();

    // Set value of tweet
    await twitterInstance.createTweet("Hello Twitter", { from: accounts[0] });

    // Get stored value
    const storedData = await twitterInstance.getTweet(accounts[0]);

    assert.equal(storedData, "Hello Twitter", "The value of the tweet was not stored.");
  });
});