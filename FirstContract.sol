// SPDX-License-Identifier: MIT
// Empress Djata, first contract in Solidity
//version number only ^any version >= range < end range
pragma solidity ^0.8.8;

contract SimpleStorage {
    //basic types: boolean, uint: !(-), int: (+ or-), address, bytes: low level type
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 5;
    string favoriteNumberInText = "Five";
    int256 favoriteInt = -5;
    address myAdress = 0x5CE2bA7A6466F58244D1Bc70e330c68017d3E03F;
    bytes32 favoriteBytes = "dog"; // get turned into byte object 0x12345546


}

