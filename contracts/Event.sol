// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Event {
    event Message(address indexed _from, address indexed _to, string message);
    event Log(address _sender, string message);

    function showMessage(address _to, string memory message) external {
        emit Message(msg.sender, _to, message);
    }

    function showLogs() public {
        emit Log(msg.sender, "Transaction successfull");
    }
}