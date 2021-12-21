// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Enum {
    enum Rarity {
        // default values:
        original, // 0
        rare, // 1
        superRare // 2
    }

    Rarity public rarity;

    constructor() {
        rarity = Rarity.rare;
    }

    function rarityBased() public {
        rarity = Rarity.superRare;
    }
}