// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "Only owner can use this...");
        _;
    }

    function setOwner(address _owner) external isOwner {
        require(_owner != address(0), "Invalid Address");
        owner = _owner;
    }

    function onlyForOwner() public isOwner {}

    function publicFunction() public {}
}