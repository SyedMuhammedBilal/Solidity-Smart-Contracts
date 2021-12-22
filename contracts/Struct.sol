// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Struct {
    
    struct NFT {
        string name;
        uint256 dna;
    }

    // mapping(uint256 => NFT) nftMapping;
    NFT[] public nftList;

    function addNewNFT(string memory _name, uint256 _dna) public {
        // NFT memory newNFT;
        // newNFT.name = _name;
        // newNFT.dna = _dna;
        NFT memory newNft = NFT(_name, _dna);
        nftList.push(newNft);
    }

    function getNFT(uint256 _index) public view returns(string memory) {
        return nftList[_index].name;
    }
}