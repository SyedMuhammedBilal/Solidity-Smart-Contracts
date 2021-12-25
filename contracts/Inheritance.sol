// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Inheritance_A {
    string internal name = "AVAX";
}

contract Inheritance_B is Inheritance_A {
    function showName() public view returns (string memory) {
        return name;
    }
}

// we can inherit one and more contract, 
// but it hsould be order like A, B, C not like B, A, C 
contract Inheritance_C is Inheritance_A, Inheritance_B {
     
}