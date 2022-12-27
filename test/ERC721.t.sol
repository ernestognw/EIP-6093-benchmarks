// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC721.sol";

contract ERC721Test is Test {
    function testERC721RevertStringEmpty(address a, uint256 b, address c) public {
        ERC721RevertStringEmpty revertStringEmpty = new ERC721RevertStringEmpty();
        vm.expectRevert();
        revertStringEmpty.checkError(a, b, c);
    }

    function testERC721RevertStringShort(address a, uint256 b, address c) public {
        ERC721RevertStringShort revertStringShort = new ERC721RevertStringShort();
        vm.expectRevert();
        revertStringShort.checkError(a, b, c);
    }

    function testERC721RevertStringLong(address a, uint256 b, address c) public {
        ERC721RevertStringLong revertStringLong = new ERC721RevertStringLong();
        vm.expectRevert();
        revertStringLong.checkError(a, b, c);
    }

    function testERC721InvalidOwner(address a, uint256 b, address c) public {
        ERC721InvalidOwnerError invalidOwner = new ERC721InvalidOwnerError();
        vm.expectRevert();
        invalidOwner.checkError(a, b, c);
    }

    function testERC721InvalidSender(address a, uint256 b, address c) public {
        ERC721InvalidSenderError invalidSender = new ERC721InvalidSenderError();
        vm.expectRevert();
        invalidSender.checkError(a, b, c);
    }

    function testERC721InvalidReceiver(address a, uint256 b, address c) public {
        ERC721InvalidReceiverError invalidReceiver = new ERC721InvalidReceiverError();
        vm.expectRevert();
        invalidReceiver.checkError(a, b, c);
    }

    function testERC721InsufficientApproval(address a, uint256 b, address c) public {
        ERC721InsufficientApprovalError insufficientApproval = new ERC721InsufficientApprovalError();
        vm.expectRevert();
        insufficientApproval.checkError(a, b, c);
    }

    function testERC721InvalidApprover(address a, uint256 b, address c) public {
        ERC721InvalidApproverError invalidApprover = new ERC721InvalidApproverError();
        vm.expectRevert();
        invalidApprover.checkError(a, b, c);
    }

    function testERC721InvalidOperator(address a, uint256 b, address c) public {
        ERC721InvalidOperatorError invalidOperator = new ERC721InvalidOperatorError();
        vm.expectRevert();
        invalidOperator.checkError(a, b, c);
    }
}
