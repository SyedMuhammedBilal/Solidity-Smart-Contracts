// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Constructor {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

// inheritance 
contract Constructor2 is Constructor {
    // first constructor is initialzed
    // the second Constructor is extending the above contract constructor
    // giving the parameter it needs to use the above constructor
    constructor(string memory _name) Constructor(_name) {}
}