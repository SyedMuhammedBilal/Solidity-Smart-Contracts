// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Modifiers {
    uint32 public count = 1;
    bool public isPaused = false;

    modifier isNotPaused() {
        require(isPaused == false, "Contract is paused");
        _;
    }

    function contractPauser() public {
        isPaused = !isPaused;
    }

    function incremenetCount() public isNotPaused {
        count++;
    }
}