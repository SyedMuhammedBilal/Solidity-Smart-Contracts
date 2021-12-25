// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Events {
    event CreatedNFT(address indexed user, uint32 id, uint256 dna);

    function creatNFT(uint32 _id, uint256 _dna) public {
        emit CreatedNFT(msg.sender, _id, _dna);
    }
}