pragma solidity ^0.8.0;

library MiniMath {
    function square(uint256 x) pure internal returns (uint256) {
        return x * x;
    }
}
