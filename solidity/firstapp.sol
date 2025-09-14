// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Counter {
    uint256 public count;

    // return the value actual of counter
    function get() public view returns (uint256) {
        return count;
    }

    // increment the counter
    function inc() public {
        count += 1;
    }

    // decrement the counter, but only if its greater than zero
    function dec() public {
        require(count > 0);
        count -= 1;
    }

    // reset the counter to zero
    function reset() public {
        count = 0;
    }
}
