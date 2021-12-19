// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract IfElse {
    uint32 public gasFee = 25;
    uint256 public balance = 200;
    bool public success = false;
    string public userMessage = "failed";

    function processTransaction() public {
        balance = balance - 20;
    }

    function remainingBalance() public {
        if (balance >= 180) {
            success = true;
            userMessage = "transaction successfull!";
        } else {
            userMessage;
        }
    }
}