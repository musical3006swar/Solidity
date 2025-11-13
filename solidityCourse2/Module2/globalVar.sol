// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LedgerBalance{
    mapping(address=>uint) balance;
    function updateBalance(uint balances) public{
        balance[msg.sender]=balances;
    }

}

contract Updated {
    function updatesBalance() public{
        LedgerBalance ledgerbalance =new LedgerBalance();
        ledgerbalance.updateBalance(30);
    }
}