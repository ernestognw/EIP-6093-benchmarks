// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC1155.sol";

contract ERC1155Test is Test {
    function testERC1155RevertStringEmpty(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155RevertStringEmpty revertStringEmpty = new ERC1155RevertStringEmpty();
        vm.expectRevert();
        revertStringEmpty.checkError(a, b, c, d);
    }

    function testERC1155RevertStringShort(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155RevertStringShort revertStringShort = new ERC1155RevertStringShort();
        vm.expectRevert();
        revertStringShort.checkError(a, b, c, d);
    }

    function testERC1155RevertStringLong(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155RevertStringLong revertStringLong = new ERC1155RevertStringLong();
        vm.expectRevert();
        revertStringLong.checkError(a, b, c, d);
    }

    function testERC1155InvalidOwner(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155InsufficientBalanceError insufficientBalance = new ERC1155InsufficientBalanceError();
        vm.expectRevert();
        insufficientBalance.checkError(a, b, c, d);
    }

    function testERC1155InvalidSender(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155InvalidSenderError invalidSender = new ERC1155InvalidSenderError();
        vm.expectRevert();
        invalidSender.checkError(a, b, c, d);
    }

    function testERC1155InvalidReceiver(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155InvalidReceiverError invalidReceiver = new ERC1155InvalidReceiverError();
        vm.expectRevert();
        invalidReceiver.checkError(a, b, c, d);
    }

    function testERC1155InsufficientApproval(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155InsufficientApprovalError insufficientApproval = new ERC1155InsufficientApprovalError();
        vm.expectRevert();
        insufficientApproval.checkError(a, b, c, d);
    }

    function testERC1155InvalidApprover(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155InvalidApproverError invalidApprover = new ERC1155InvalidApproverError();
        vm.expectRevert();
        invalidApprover.checkError(a, b, c, d);
    }

    function testERC1155InvalidOperator(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155InvalidOperatorError invalidOperator = new ERC1155InvalidOperatorError();
        vm.expectRevert();
        invalidOperator.checkError(a, b, c, d);
    }

    function testERC1155InvalidArrayLength(address a, uint256 b, uint256 c, uint256 d) public {
        ERC1155InvalidArrayLengthError invalidArrayLength = new ERC1155InvalidArrayLengthError();
        vm.expectRevert();
        invalidArrayLength.checkError(a, b, c, d);
    }
}
