// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Functions {
    uint256 myUint = 42;
    string public myName = "Bilal";
    bool myBool = true;
    uint256[] myArr = [2, 4, 6];

    // (PURE) function donot change any state
    // (PURE) function are used in very rare cases in smart-contracts
    function pureFunction(uint32 _x, uint32 _y) pure public returns (uint256) {
        return _x + _y;
    }

    // (VIEW) function also dont change any state or also dont taks any parameters
    // (VIEW) function only returns the state
    function viewFunction() public view returns (string memory) {
        return myName;
    }

    // (NON-VIEW FUNCTION) is a function that can take parameter and 
    // it has a ability to update the state varibales
    function updateName() public returns (string memory) {
        myName = "avax";
        return myName;
    }
}