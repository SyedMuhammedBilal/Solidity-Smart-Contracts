// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Strcuts {
    struct UserBioData {
        string name;
        string gender;
        uint age;
        address walletAddress;
    }

    UserBioData[] public data;
    mapping(address => UserBioData[]) public dataMapping;

    // POST
    function addUserData() public {
        UserBioData memory userData = UserBioData({
            name: "Syed Bilal",
            gender: "male",
            age: 19,
            walletAddress: msg.sender
        });

        data.push(userData);
    }

    // GET
    function getUserData(uint _key) public view returns (UserBioData memory) {
        return data[_key];
    }

    // UPDATE
    function updateUserData(uint _key, uint _age) public {
        UserBioData storage _data = data[_key];
        _data.age = _age;
    }

    // DELETE
    function deleteUserData(uint _key) public {
        delete data[_key];
    }

}