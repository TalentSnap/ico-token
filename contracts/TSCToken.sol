pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20//BurnableToken.sol";


contract TSCToken is PausableToken, BurnableToken {
    string public name = "TalentSnap Coin";
    string public symbol = "TSC";
    uint public decimals = 18;
    uint public INITIAL_SUPPLY = 403333333 * (10 ** uint256(decimals));

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}

