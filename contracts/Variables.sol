// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Variables {
    uint256 number = 20; // state variable
    bool paused = false;

    function contractPauser() public {
        uint256 localNumber = 10;
    }
}