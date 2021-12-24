// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ErrorsAndChecks {

    function pureFunction(uint32 _numA, uint32 _numB) public pure returns (uint32) {
        // (REQUIRE) is like an if condition, it takes two parameters
        // to satidfy the condition and complie the rest of the code in the function
        // we can also give 2nd paramter to show error to the user, it is optional
        require(_numA > _numB, "1st parameter should be greater than 2nd parameter");
        return _numA + _numB;
    }

    // (REVERT) is used when we dont any number or wallet address or anything that
    // will be executed in the transaction, so we use (REVERT) to stop executing 
    // the transaction
    function pureRevertFunction(uint32 _numA, uint32 _numB) public pure returns (uint32) {
        if (_numA == 5) {
            revert("numA is 5");
        } else {
           return _numA + _numB;
        }
    }
}