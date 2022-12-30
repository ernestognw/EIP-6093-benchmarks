// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC1155.sol";

contract ERC1155RevertBaselineTest is Test {
    ERC1155RevertBaseline revertBaseline;

    function setUp() public {
        revertBaseline = new ERC1155RevertBaseline();
    }

    function testERC1155RevertBaseline(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        revertBaseline.checkError(a, b, c, d);
    }
}

contract ERC1155RevertStringEmptyTest is Test {
    ERC1155RevertStringEmpty revertStringEmpty;

    function setUp() public {
        revertStringEmpty = new ERC1155RevertStringEmpty();
    }

    function testERC1155RevertStringEmpty(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        revertStringEmpty.checkError(a, b, c, d);
    }
}

contract ERC1155RevertStringShortTest is Test {
    ERC1155RevertStringShort revertStringShort;

    function setUp() public {
        revertStringShort = new ERC1155RevertStringShort();
    }

    function testERC1155RevertStringShort(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        revertStringShort.checkError(a, b, c, d);
    }
}

contract ERC1155RevertStringLongTest is Test {
    ERC1155RevertStringLong revertStringLong;

    function setUp() public {
        revertStringLong = new ERC1155RevertStringLong();
    }

    function testERC1155RevertStringLong(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        revertStringLong.checkError(a, b, c, d);
    }
}

contract ERC1155InsufficientBalanceTest is Test {
    ERC1155InsufficientBalanceError insufficientBalance;

    function setUp() public {
        insufficientBalance = new ERC1155InsufficientBalanceError();
    }

    function testERC1155InsufficientBalance(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        insufficientBalance.checkError(a, b, c, d);
    }
}

contract ERC1155InvalidSenderTest is Test {
    ERC1155InvalidSenderError invalidSender;

    function setUp() public {
        invalidSender = new ERC1155InvalidSenderError();
    }

    function testERC1155InvalidSender(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        invalidSender.checkError(a, b, c, d);
    }
}

contract ERC1155InvalidReceiverTest is Test {
    ERC1155InvalidReceiverError invalidReceiver;

    function setUp() public {
        invalidReceiver = new ERC1155InvalidReceiverError();
    }

    function testERC1155InvalidReceiver(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        invalidReceiver.checkError(a, b, c, d);
    }
}

contract ERC1155InsufficientApprovalTest is Test {
    ERC1155InsufficientApprovalError insufficientApproval;

    function setUp() public {
        insufficientApproval = new ERC1155InsufficientApprovalError();
    }

    function testERC1155InsufficientApproval(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        insufficientApproval.checkError(a, b, c, d);
    }
}

contract ERC1155InvalidApproverTest is Test {
    ERC1155InvalidApproverError invalidApprover;

    function setUp() public {
        invalidApprover = new ERC1155InvalidApproverError();
    }

    function testERC1155InvalidApprover(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        invalidApprover.checkError(a, b, c, d);
    }
}

contract ERC1155InvalidOperatorTest is Test {
    ERC1155InvalidOperatorError invalidOperator;

    function setUp() public {
        invalidOperator = new ERC1155InvalidOperatorError();
    }

    function testERC1155InvalidOperator(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        invalidOperator.checkError(a, b, c, d);
    }
}

contract ERC1155InvalidArrayLengthTest is Test {
    ERC1155InvalidArrayLengthError invalidArrayLength;

    function setUp() public {
        invalidArrayLength = new ERC1155InvalidArrayLengthError();
    }

    function testERC1155InvalidArrayLength(address a, uint256 b, uint256 c, uint256 d) public {
        vm.expectRevert();
        invalidArrayLength.checkError(a, b, c, d);
    }
}
