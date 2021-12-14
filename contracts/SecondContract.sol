// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 0xd9145CCE52D386f254917e481eB44e9943F39138
contract SecondContract {
    string public name = "Bilal";

    function updateName(string memory _newName) public {
        name = _newName;
    }
}