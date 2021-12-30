// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Immutable {
    address public immutable owner;
    uint public x;

    constructor() {
        owner = msg.sender;
    }

    modifier owenrship() {
        require(msg.sender == owner);
        _;
    }

    function confirmOwner() public owenrship {
        x++;
    }
}