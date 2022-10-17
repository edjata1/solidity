// SPDX-License-Identifier: MIT
// Empress Djata, first contract in Solidity
//version number only ^any version >= range < end range
pragma solidity ^0.8.8;

contract SimpleStorage {

    // gets initialized to 0 and see it
    uint256 favoriteNumber;

    // hold name & #, using struct creates a new type
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // Array
    People[] public people;

    //function or method
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // by updating fav# will cost more GAS
        favoriteNumber = favoriteNumber + 5;
    }

    // no GAS spent using (view / pure) ONLY cost when state is modified 
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function add() public pure returns(uint256){
        return (1 + 2);
    }

    // create function to add people to array
    function addPerson(string memory _name, uint256 _favoriteNumber) public {

        // People refers to struct People, people refers to variable array people
        // people.push(People(_favoriteNumber, _name));

        //or 

        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        // people.push(newPerson);

        //or 

        People memory newPerson = People(_favoriteNumber, _name);
        people.push(newPerson);
    }

}

// 0x3328358128832A260C76A4141e19E2A943CD4B6D