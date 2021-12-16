// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyFirstContract {
    uint storageVariable;

    function setValue(uint val) public {
        storageVariable = val;
    }

    function getValue() public view {
        storageVariable;
    }
}