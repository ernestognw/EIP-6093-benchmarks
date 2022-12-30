// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC20.sol";

contract ERC20RevertBaselineTest is Test {
    ERC20RevertBaseline revertBaseline;

    function setUp() public {
        revertBaseline = new ERC20RevertBaseline();
    }

    function testERC20RevertBaseline(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        revertBaseline.checkError(a, b, c);
    }
}

contract ERC20RevertStringEmptyTest is Test {
    ERC20RevertStringEmpty revertStringEmpty;

    function setUp() public {
        revertStringEmpty = new ERC20RevertStringEmpty();
    }

    function testERC20RevertStringEmpty(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        revertStringEmpty.checkError(a, b, c);
    }
}

contract ERC20RevertStringShortTest is Test {
    ERC20RevertStringShort revertStringShort;

    function setUp() public {
        revertStringShort = new ERC20RevertStringShort();
    }

    function testERC20RevertStringShort(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        revertStringShort.checkError(a, b, c);
    }
}

contract ERC20RevertStringLongTest is Test {
    ERC20RevertStringLong revertStringLong;

    function setUp() public {
        revertStringLong = new ERC20RevertStringLong();
    }

    function testERC20RevertStringLong(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        revertStringLong.checkError(a, b, c);
    }
}

contract ERC20InsufficientBalanceErrorTest is Test {
    ERC20InsufficientBalanceError insufficientBalance;

    function setUp() public {
        insufficientBalance = new ERC20InsufficientBalanceError();
    }

    function testERC20InsufficientBalance(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        insufficientBalance.checkError(a, b, c);
    }
}

contract ERC20InvalidSenderErrorTest is Test {
    ERC20InvalidSenderError invalidSender;

    function setUp() public {
        invalidSender = new ERC20InvalidSenderError();
    }

    function testERC20InvalidSender(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        invalidSender.checkError(a, b, c);
    }
}

contract ERC20InvalidReceiverErrorTest is Test {
    ERC20InvalidReceiverError invalidReceiver;

    function setUp() public {
        invalidReceiver = new ERC20InvalidReceiverError();
    }

    function testERC20InvalidReceiver(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        invalidReceiver.checkError(a, b, c);
    }
}

contract ERC20InsufficientAllowanceErrorTest is Test {
    ERC20InsufficientAllowanceError insufficientAllowance;

    function setUp() public {
        insufficientAllowance = new ERC20InsufficientAllowanceError();
    }

    function testERC20InsufficientAllowance(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        insufficientAllowance.checkError(a, b, c);
    }
}

contract ERC20InvalidApproverErrorTest is Test {
    ERC20InvalidApproverError invalidApprover;

    function setUp() public {
        invalidApprover = new ERC20InvalidApproverError();
    }

    function testERC20InvalidApprover(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        invalidApprover.checkError(a, b, c);
    }
}

contract ERC20InvalidSpenderErrorTest is Test {
    ERC20InvalidSpenderError invalidSpender;

    function setUp() public {
        invalidSpender = new ERC20InvalidSpenderError();
    }

    function testERC20InvalidSpender(address a, uint256 b, uint256 c) public {
        vm.expectRevert();
        invalidSpender.checkError(a, b, c);
    }
}
