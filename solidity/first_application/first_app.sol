pa1va@kernel:~/smart_contract/solidity$ cat first_app.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract UserCounter{
	mapping(address => uint256) public balances;

	function get() public view returns (uint256) {
		return balances[msg.sender];
	}

	function inc() public {
		balances[msg.sender] += 1;
	}

	function dec() public {
		require(balances[msg.sender] > 0, "Insufficient balance");
		balances[msg.sender] -= 1;
	}
}
