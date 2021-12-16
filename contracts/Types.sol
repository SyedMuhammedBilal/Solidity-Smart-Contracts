// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Types {

    bool internal myBoolean = false;

    uint256 public myUint256 = 113428892174; 
    uint32 public myUint32 = 122324434;
    uint16 public myUint16 = 12342;
    uint8 public myUint8 = 255; // from 0 - 255 | 2 ** 8 = 255

    int256 private myInt256 = -123456789;
    int32 private myInt32 = -823681684;
    int16 internal myInt16 = -23626;
    int8 internal myInt8 = -128; // from 0 - 255 (half of 255)

    // converting a type to a different type
    int256 myNewInt = int256(myInt8);

    // payable stands for (accepting token or coin)
    // address stands for (wallet address)
    // this stand for (this contract address)
    address payable public myAddress = payable(0x842a9aA3d0a5b1867288eCaA81eFE5926b818AE9);
    address private myContractAddress = address(this);

    uint256 balance = myContractAddress.balance;

}