// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract AssemblyVariable {
    function yul_let() public pure returns (uint x, uint z) {
        assembly {
            let tmp := 123
            x := tmp
            z := 456
        }
    }
}
