pragma solidity >=0.4.22 <0.6.0;
pragma experimental ABIEncoderV2;

import "./Exchange.sol";
import "./ExchangeBatchTrade.sol";
import "./ExchangeMovements.sol";
import "./ExchangeUpgradability.sol";
import "./ExchangeOffering.sol";

contract WeiDex is
    Exchange,
    ExchangeBatchTrade,
    ExchangeMovements,
    ExchangeUpgradability,
    ExchangeOffering
{
    function () external payable {
        revert("FALLBACK_FAIL");
    }
}
