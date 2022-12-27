// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC20.sol";

contract ERC20Test is Test {
    function testERC20RevertStringEmpty(address a, uint256 b, uint256 c) public {
        ERC20RevertStringEmpty revertStringEmpty = new ERC20RevertStringEmpty();
        vm.expectRevert();
        revertStringEmpty.checkError(a, b, c);
    }

    function testERC20RevertStringShort(address a, uint256 b, uint256 c) public {
        ERC20RevertStringShort revertStringShort = new ERC20RevertStringShort();
        vm.expectRevert();
        revertStringShort.checkError(a, b, c);
    }

    function testERC20RevertStringLong(address a, uint256 b, uint256 c) public {
        ERC20RevertStringLong revertStringLong = new ERC20RevertStringLong();
        vm.expectRevert();
        revertStringLong.checkError(a, b, c);
    }

    function testERC20InsufficientBalance(address a, uint256 b, uint256 c) public {
        ERC20InsufficientBalanceError insufficientBalance = new ERC20InsufficientBalanceError();
        vm.expectRevert();
        insufficientBalance.checkError(a, b, c);
    }

    function testERC20InvalidSender(address a, uint256 b, uint256 c) public {
        ERC20InvalidSenderError invalidSender = new ERC20InvalidSenderError();
        vm.expectRevert();
        invalidSender.checkError(a, b, c);
    }

    function testERC20InvalidReceiver(address a, uint256 b, uint256 c) public {
        ERC20InvalidReceiverError invalidReceiver = new ERC20InvalidReceiverError();
        vm.expectRevert();
        invalidReceiver.checkError(a, b, c);
    }

    function testERC20InsufficientAllowance(address a, uint256 b, uint256 c) public {
        ERC20InsufficientAllowanceError insufficientAllowance = new ERC20InsufficientAllowanceError();
        vm.expectRevert();
        insufficientAllowance.checkError(a, b, c);
    }

    function testERC20InvalidApprover(address a, uint256 b, uint256 c) public {
        ERC20InvalidApproverError invalidApprover = new ERC20InvalidApproverError();
        vm.expectRevert();
        invalidApprover.checkError(a, b, c);
    }

    function testERC20InvalidSpender(address a, uint256 b, uint256 c) public {
        ERC20InvalidSpenderError invalidSpender = new ERC20InvalidSpenderError();
        vm.expectRevert();
        invalidSpender.checkError(a, b, c);
    }
}
