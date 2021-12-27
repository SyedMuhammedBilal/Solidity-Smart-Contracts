// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract IterableMapping {
    mapping(address => uint) public balance;
    mapping(address => bool) public inserted;
    address[] public keys;

    function setBalance(address _key, uint _value) public {
        balance[_key] = _value;

        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getSizeOfKeys() public view returns (uint) {
        return keys.length;
    }

    function getFirstBalance() public view returns (uint) {
        return balance[keys[0]];
    }

    function getLastBalance() public view returns (uint) {
        return balance[keys[keys.length - 1]];
    }

    function getSpecificKeyBalance(uint _key) public view returns (uint) {
        return balance[keys[_key]];
    }
}