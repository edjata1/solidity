// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

// copied contract from SimpleStorage.sol
contract SimpleStorage {

    uint256 favoriteNumber;

    // create type using struct
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    People[] public people;

    // mapping like dictopnary
    mapping(string => uint256) public nameToFavoriteNumber;

    // function modify cost gas
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    // view, pure: cost no gas doesn't modify
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

// create 2nd contract
contract storageFactory {

    // global variable create type SimpleStorage contract
    SimpleStorage public simpleStorage;

    // create function
    function createSimpleStorageContract() public {

        // contract object
        simpleStorage = new SimpleStorage();

    }
}

// 0x652c9ACcC53e765e1d96e2455E618dAaB79bA595