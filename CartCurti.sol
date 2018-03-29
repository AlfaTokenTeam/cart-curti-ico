pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CartCurti is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CartCurti(address _owner)  UpgradeableToken(_owner) {
    name = "CartCurti";
    symbol = "CCT";
    totalSupply = 1000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}