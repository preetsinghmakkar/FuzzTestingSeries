// SPDX-License-Identifier: MIT

pragma solidity 0.7.0;

import "./Token.sol";

contract TestToken is Token {
    //Echidna Caller is an EOA Account
    //Now it will call the functions as a user
    address echidna_caller = msg.sender;

    constructor() public {
        balances[echidna_caller] = 10000;
    }

    //For fuzz testing using Echidna We have to declare function using echidna
    function echidna_test_balance() public view returns (bool) {
        return balances[echidna_caller] <= 10000;
    }
}
