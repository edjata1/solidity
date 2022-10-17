// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;
//interacting 

import "./SimpleStorage.sol";

// create contract
contract storageFactory {

    // save to global array or list create type SimpleStorage contract
    SimpleStorage[] public simpleStorageArray;

    // create function
    function createSimpleStorageContract() public {

        // save as memory variable
        SimpleStorage simpleStorage = new SimpleStorage();
        // push to array
        simpleStorageArray.push(simpleStorage);

    }

    // create function to interact with contracts
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        // 2 things needed (Address) & (ABI- Application Binary Interface) object
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    // read number stored above
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){

        //retrieve simple storage object
       return simpleStorageArray[_simpleStorageIndex].retrieve();

        //or
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // return simpleStorage.retrieve();

    }
}

// 0x8a7644191756a1122A63C0CA7238A8f15706f825