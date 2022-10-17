// Empress Djata, add and withdraw funds
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// create contract
contract FundMe {

    uint256 public minimumUsd = 50;

    // transactions - value transfer: nonce, gas price, gas limit, to, value, data, (v,r,s)
    // fund function: gas price, to, data
    // how to send ETH to this contract
    function fund() public payable {

        //access value
        require(msg.value > 1e18, "Didn't send enough!"); // 1e18 = 1 * 10 ** 18 =1000000000000000000 wei

    }

    // transactions - function call: nonce, gas price, gas limit, to, value, data, (v,r,s)
    // withdraw function: to, data
    // function withdraw(){}
}

//0xD85A5A00ce1DB01430b86A6Ee10Fd54bDb861a22