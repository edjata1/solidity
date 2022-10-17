//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//import 
import "./SimpleStorage.sol";

// inheritance of functions your contract is other contract
contract ExtraStorage is SimpleStorage {

    // override a function: virtual or override
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
    

}