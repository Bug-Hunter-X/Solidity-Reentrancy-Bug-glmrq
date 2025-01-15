```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  uint oldBalance = balanceOf[msg.sender];
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  require(balanceOf[msg.sender] == oldBalance - amount, "Transfer failed");
  emit Transfer(msg.sender, to, amount);
}
```

This improved version checks the balance after subtracting `amount` from `msg.sender`'s balance to prevent reentrancy attacks. The `require` statement ensures the balance has decreased by the correct amount.