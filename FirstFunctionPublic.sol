// SPDX-License-Identifier: MIT
// Empress Djata, first contract in Solidity
//version number only ^any version >= range < end range
pragma solidity ^0.8.8;

contract SimpleStorage {

    // gets initialized to 0 and see it
    uint256 public favoriteNumber;

    //function or method
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }


}

// 0xd9145CCE52D386f254917e481eB44e9943F39138