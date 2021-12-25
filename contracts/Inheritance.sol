// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Inheritance_A {
    string internal name = "AVAX";
}

contract Inheritance_B is Inheritance_A {
    // (VIRTUAL) is a built-in function to overide a function in other contract
    function showName() public view virtual returns (string memory) {
        return name;
    }
}

// we can inherit one and more contract, 
// but it hsould be order like A, B, C not like B, A, C 
contract Inheritance_C is Inheritance_A, Inheritance_B {
    // (OVERRIDE) is used to override a function, we are using this function
    // from B_Contract and making a change on it, (VIRTUAL) allow us to 
    // do changes on it
     function showName() public view virtual override returns (string memory) {
        return "SOLANA";
    }
}