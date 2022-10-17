// SPDX-License-Identifier: MIT
// Empress Djata, first contract in Solidity
//version number only ^any version >= range < end range
pragma solidity ^0.8.8;

contract SimpleStorage {

    // gets initialized to 0 and see it
    uint256 public favoriteNumber;
    People public person = People({favoriteNumber: 1, name: "Empress"});

    // hold name & #, using struct creates a new type
    struct People {
        uint256 favoriteNumber;
        string name;
    }

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

}

// 0x9d83e140330758a8fFD07F8Bd73e86ebcA8a5692