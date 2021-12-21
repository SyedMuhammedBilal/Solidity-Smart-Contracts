// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Map {
    mapping(uint256 => address) public Nfts;
    uint256 counter = 0;

    function getNfts(uint256 _id) public view returns(address) {
        return Nfts[_id];
    }

    function mintNft(address _address) public {
        Nfts[counter] = _address;
        counter++;
    }
}