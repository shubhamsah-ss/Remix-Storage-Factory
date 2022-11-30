// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;
// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {

    uint256 favoriteNumber;
    // bool hasFavoriteNumber  = false;
    // uint favoriteNumber = 123; //uint8 - unit256 default: unit256
    // string favoriteString = "Five";
    // int256 favoriteInt = -5; //int8 - unit256 default: unit256
    // address myAddress = 0xe889Dc1539c4c1A246840807b9bFf4a5b605C654;
    // bytes32 favoriteByte = "cat";
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public  virtual{
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}