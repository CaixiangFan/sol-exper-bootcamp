// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract HW6 {
    function value() public payable returns (uint256) {
        uint256 valueEth;
        assembly {
            let valueWei := callvalue()
            valueEth := div(valueWei, exp(10, 18))
        }
        return valueEth;
    }
}
