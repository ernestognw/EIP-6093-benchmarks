// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ERC721.sol";

contract ERC721RevertBaselineTest is Test {
    ERC721RevertBaseline revertBaseline;

    function setUp() public {
        revertBaseline = new ERC721RevertBaseline();
    }

    function testERC721RevertBaseline(address a, uint256 b, address c) public {
        vm.expectRevert();
        revertBaseline.checkError(a, b, c);
    }
}

contract ERC721RevertStringEmptyTest is Test {
    ERC721RevertStringEmpty revertStringEmpty;

    function setUp() public {
        revertStringEmpty = new ERC721RevertStringEmpty();
    }

    function testERC721RevertStringEmpty(address a, uint256 b, address c) public {
        vm.expectRevert();
        revertStringEmpty.checkError(a, b, c);
    }
}

contract ERC721RevertStringShortTest is Test {
    ERC721RevertStringShort revertStringShort;

    function setUp() public {
        revertStringShort = new ERC721RevertStringShort();
    }

    function testERC721RevertStringShort(address a, uint256 b, address c) public {
        vm.expectRevert();
        revertStringShort.checkError(a, b, c);
    }
}

contract ERC721RevertStringLongTest is Test {
    ERC721RevertStringLong revertStringLong;

    function setUp() public {
        revertStringLong = new ERC721RevertStringLong();
    }

    function testERC721RevertStringLong(address a, uint256 b, address c) public {
        vm.expectRevert();
        revertStringLong.checkError(a, b, c);
    }
}

contract ERC721InvalidOwnerTest is Test {
    ERC721InvalidOwnerError invalidOwner;

    function setUp() public {
        invalidOwner = new ERC721InvalidOwnerError();
    }

    function testERC721InvalidOwner(address a, uint256 b, address c) public {
        vm.expectRevert();
        invalidOwner.checkError(a, b, c);
    }
}

contract ERC721InvalidSenderTest is Test {
    ERC721InvalidSenderError invalidSender;

    function setUp() public {
        invalidSender = new ERC721InvalidSenderError();
    }

    function testERC721InvalidSender(address a, uint256 b, address c) public {
        vm.expectRevert();
        invalidSender.checkError(a, b, c);
    }
}

contract ERC721InvalidReceiverTest is Test {
    ERC721InvalidReceiverError invalidReceiver;

    function setUp() public {
        invalidReceiver = new ERC721InvalidReceiverError();
    }

    function testERC721InvalidReceiver(address a, uint256 b, address c) public {
        vm.expectRevert();
        invalidReceiver.checkError(a, b, c);
    }
}

contract ERC721InsufficientApprovalTest is Test {
    ERC721InsufficientApprovalError insufficientApproval;

    function setUp() public {
        insufficientApproval = new ERC721InsufficientApprovalError();
    }

    function testERC721InsufficientApproval(address a, uint256 b, address c) public {
        vm.expectRevert();
        insufficientApproval.checkError(a, b, c);
    }
}

contract ERC721InvalidApproverTest is Test {
    ERC721InvalidApproverError invalidApprover;

    function setUp() public {
        invalidApprover = new ERC721InvalidApproverError();
    }

    function testERC721InvalidApprover(address a, uint256 b, address c) public {
        vm.expectRevert();
        invalidApprover.checkError(a, b, c);
    }
}

contract ERC721InvalidOperatorTest is Test {
    ERC721InvalidOperatorError invalidOperator;

    function setUp() public {
        invalidOperator = new ERC721InvalidOperatorError();
    }

    function testERC721InvalidOperator(address a, uint256 b, address c) public {
        vm.expectRevert();
        invalidOperator.checkError(a, b, c);
    }
}
