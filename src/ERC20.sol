// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20Base} from "./interfaces/IERC20Base.sol";

contract ERC20RevertStringEmpty is IERC20Base {
    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        require(false, "");
    }
}

contract ERC20RevertStringShort is IERC20Base {
    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        require(false, "short string");
    }
}

contract ERC20RevertStringLong is IERC20Base {
    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        require(false, "a very long string that will use more space to store and should cost more");
    }
}

contract ERC20InsufficientBalanceError is IERC20Base {
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        revert ERC20InsufficientBalance(a, b, c);
    }
}

contract ERC20InvalidSenderError is IERC20Base {
    error ERC20InvalidSender(address sender);

    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        revert ERC20InvalidSender(a);
    }
}

contract ERC20InvalidReceiverError is IERC20Base {
    error ERC20InvalidReceiver(address receiver);

    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        revert ERC20InvalidReceiver(a);
    }
}

contract ERC20InsufficientAllowanceError is IERC20Base {
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        revert ERC20InsufficientAllowance(a, b, c);
    }
}

contract ERC20InvalidApproverError is IERC20Base {
    error ERC20InvalidApprover(address approver);

    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        revert ERC20InvalidApprover(a);
    }
}

contract ERC20InvalidSpenderError is IERC20Base {
    error ERC20InvalidSpender(address spender);

    function checkError(address a, uint256 b, uint256 c) external pure returns (uint256 o) {
        o = uint160(a) + b + c;
        revert ERC20InvalidSpender(a);
    }
}
