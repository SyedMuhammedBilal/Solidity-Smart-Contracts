// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyFirstContract {
    unit storageVariable;

    function setValue(unit val) public {
        storageVariable = val;
    }

    function getValue() public view return () {
        storageVariable;
    }
}