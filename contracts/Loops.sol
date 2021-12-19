// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Loops {

    function createLoop() public pure {
        for (uint32 i = 0; i < 5; i++) {
            if (i == 2) {
                continue;
            } else if (i == 3) {
                break;
            }
        }

        uint32 j = 0;

        while (j < 5) {
            j++;
        }
    }
}