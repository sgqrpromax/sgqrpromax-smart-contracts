// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.22;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SGDk is ERC20{
	
	constructor() ERC20("SGDk", "SGDk"){
		_mint(msg.sender, 1000 * 10**6);
	}

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

	fallback () external payable {
		_mint(msg.sender, 1000 * 10**6);
	}
}