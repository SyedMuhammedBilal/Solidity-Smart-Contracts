// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Enum {
    enum Status {
        none,
        pending,
        shipped,
        rejected,
        cancelled,
        dilevered
    }

    Status public status;
    
    struct Order {
        address buyer;
        Status status;
    }

    function getStatus() public view returns (Status) {
        return status;
    }

    function setStatus(Status _status) public {
        status = _status;
    }

    function shipped() public {
        status = Status.shipped;
    }

    function deleteStatus() public {
        delete status;
    }
}