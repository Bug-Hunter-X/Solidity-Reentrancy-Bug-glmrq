```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}
```

This code has a potential reentrancy vulnerability.  If the `to` address is a malicious contract that calls back into the `transfer` function during the execution of the `transfer` function, it could manipulate the state before the state changes are completed, leading to unexpected behaviour or the theft of funds.