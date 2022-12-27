// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IERC721Base {
    /// @dev Every check error test should use the same parameters to guarantee fair comparison
    function checkError(address, uint256, address) external returns (uint256 o);
}
