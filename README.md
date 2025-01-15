# Solidity Reentrancy Vulnerability

This repository demonstrates a common reentrancy vulnerability in Solidity smart contracts.  The `transfer` function is vulnerable to reentrancy attacks because it modifies the contract's state before checking the balance. A malicious contract can exploit this to steal funds.