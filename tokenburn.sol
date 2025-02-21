pragma solidity ^0.8.0;

contract DeflationaryToken {
    mapping(address => uint256) private balances;
    uint256 private totalSupply = 1000000 * 10**18;
    uint256 private burnRate = 2; // 2% burn rate per transfer

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function transfer(address recipient, uint256 amount) public returns (bool) {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        uint256 burnAmount = (amount * burnRate) / 100;
        uint256 transferAmount = amount - burnAmount;

        balances[msg.sender] -= amount;
        balances[recipient] += transferAmount;
        totalSupply -= burnAmount;

        emit Transfer(msg.sender, recipient, transferAmount);
        emit Burn(msg.sender, burnAmount);
        return true;
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    function totalSupplyRemaining() public view returns (uint256) {
        return totalSupply;
    }
}
