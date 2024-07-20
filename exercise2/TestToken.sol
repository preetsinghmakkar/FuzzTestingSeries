// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./token.sol";

contract TestToken is Token {
    address echidna_caller;

    constructor() public {
        paused();
        owner = address(0);
    }

    function echidna_TestPausableOwner() external view returns (bool) {
        return is_paused == true;
    }
}
