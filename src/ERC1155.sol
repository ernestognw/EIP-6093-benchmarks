// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC1155Base} from "./interfaces/IERC1155Base.sol";

contract ERC1155RevertStringEmpty is IERC1155Base {
    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        require(false, "");
    }
}

contract ERC1155RevertStringShort is IERC1155Base {
    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        require(false, "short string");
    }
}

contract ERC1155RevertStringLong is IERC1155Base {
    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        require(false, "a very long string that will use more space to store and should cost more");
    }
}

contract ERC1155InsufficientBalanceError is IERC1155Base {
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        revert ERC1155InsufficientBalance(a, b, c, d);
    }
}

contract ERC1155InvalidSenderError is IERC1155Base {
    error ERC1155InvalidSender(address sender);

    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        revert ERC1155InvalidSender(a);
    }
}

contract ERC1155InvalidReceiverError is IERC1155Base {
    error ERC1155InvalidReceiver(address receiver);

    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        revert ERC1155InvalidReceiver(a);
    }
}

contract ERC1155InsufficientApprovalError is IERC1155Base {
    error ERC1155InsufficientApproval(address operator, uint256 tokenId);

    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        revert ERC1155InsufficientApproval(a, b);
    }
}

contract ERC1155InvalidApproverError is IERC1155Base {
    error ERC1155InvalidApprover(address approver);

    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        revert ERC1155InvalidApprover(a);
    }
}

contract ERC1155InvalidOperatorError is IERC1155Base {
    error ERC1155InvalidOperator(address operator);

    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        revert ERC1155InvalidOperator(a);
    }
}

contract ERC1155InvalidArrayLengthError is IERC1155Base {
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);

    function checkError(address a, uint256 b, uint256 c, uint256 d) external pure returns (uint256 o) {
        o = uint160(a) + b + c + d;
        revert ERC1155InvalidArrayLength(b, c);
    }
}
