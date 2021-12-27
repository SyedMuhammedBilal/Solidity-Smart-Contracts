// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Mapping {
    // GET
    mapping(address => uint) public balance;

    function addBalance() public {
        // SET
        balance[msg.sender] = 1200;
    }
    
    function addMoreBalance() public {
        // SET
        balance[msg.sender] = 1500;
    }

    function deductBalance() public {
        // DELETE
        delete balance[msg.sender];
    }
}