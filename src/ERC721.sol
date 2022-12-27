// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC721Base} from "./interfaces/IERC721Base.sol";

contract ERC721RevertString is IERC721Base {
    function checkError(address a, uint256 b, address c) external pure returns (uint256 o) {
        o = uint160(a) + b + uint160(c);
        require(false, "This will always revert");
    }
}

contract ERC721EmptyString is IERC721Base {
    function checkError(address a, uint256 b, address c) external pure returns (uint256 o) {
        o = uint160(a) + b + uint160(c);
        require(false, "");
    }
}

contract ERC721InvalidOwnerError is IERC721Base {
    error ERC721InvalidOwner(address sender, uint256 tokenId, address owner);

    function checkError(address a, uint256 b, address c) external pure returns (uint256 o) {
        o = uint160(a) + b + uint160(c);
        revert ERC721InvalidOwner(a, b, c);
    }
}

contract ERC721InvalidSenderError is IERC721Base {
    error ERC721InvalidSender(address sender);

    function checkError(address a, uint256 b, address c) external pure returns (uint256 o) {
        o = uint160(a) + b + uint160(c);
        revert ERC721InvalidSender(a);
    }
}

contract ERC721InvalidReceiverError is IERC721Base {
    error ERC721InvalidReceiver(address receiver);

    function checkError(address a, uint256 b, address c) external pure returns (uint256 o) {
        o = uint160(a) + b + uint160(c);
        revert ERC721InvalidReceiver(a);
    }
}

contract ERC721InsufficientApprovalError is IERC721Base {
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    function checkError(address a, uint256 b, address c) external pure returns (uint256 o) {
        o = uint160(a) + b + uint160(c);
        revert ERC721InsufficientApproval(a, b);
    }
}

contract ERC721InvalidApproverError is IERC721Base {
    error ERC721InvalidApprover(address approver);

    function checkError(address a, uint256 b, address c) external pure returns (uint256 o) {
        o = uint160(a) + b + uint160(c);
        revert ERC721InvalidApprover(a);
    }
}

contract ERC721InvalidOperatorError is IERC721Base {
    error ERC721InvalidOperator(address operator);

    function checkError(address a, uint256 b, address c) external pure returns (uint256 o) {
        o = uint160(a) + b + uint160(c);
        revert ERC721InvalidOperator(a);
    }
}
