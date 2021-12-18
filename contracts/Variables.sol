// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Variables {
    uint256 number = 20; // state variable
    bool private paused = false;
    uint256 public blockTime = block.timestamp;

    function contractPauser() public view {
        // uint256 localNumber = 10;
    }
}

contract NewContract is Variables { 
    bool public paused = true;
    uint256 public time = blockTime;
}