// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Functions {

    /*
        Types of functions:
        1) public
        2) private
        3) external (external function can only called outside of the contract)
        4) interal (used in the current contract scope)
    */

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

    // (EXTERNAL) function can be used in the external scope of contract
    // it works same as a public function, in this function we are returning multiple
    // data-types like uint256, string, boolean, array etc...
    function returnMultipleDataType() external view returns (uint256, string memory, bool, uint256[] memory) {
        return (
            myUint,
            myName,
            myBool,
            myArr
        );
    }
}