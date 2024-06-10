pragma solidity ^0.8.0;

import "./MiniMath.sol";

contract Main {
    function storeSquare(uint256 x) public returns (uint256) {
        uint256 square = MiniMath.square(x);
        return square;
    }
}
