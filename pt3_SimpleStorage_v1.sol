// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;
// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

// create contract like class
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

    // function modify cost gas to override
    function store(uint256 _favoriteNumber) public virtual {
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

// 