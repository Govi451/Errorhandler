// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract Grade{
    uint private passMark = 33;
    function checkGr(uint grade) public view returns (string memory) {
        require(grade >= 0 && grade <= 100, "Invalid grade!");
        if (grade >= passMark) {
            return "Pass";
        } else {
            revert("Fail");
        }
    }
    function assertGr(uint grade) public view returns (string memory) {
        assert(grade >= 0 && grade <= 100);
         if (grade >= passMark) {
            return "Pass";
        } else {
            revert("Fail");
        }
    }
}