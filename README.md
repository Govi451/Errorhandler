# Error Handling In Solidity

This program demonstrates the usage of `require()`, `assert()`, and `revert()` statements in Solidity.

## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a three functions which we are used for performing the require(),revert() and assert() function to handles the error in solidity.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:

```javascript
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
```

## Requirements

- Solidity version: 0.8.3 or higher

## Functions

### checkGr(uint grade)
The checkGr() function demonstrates the `require()` and `revert()` checks whether the provided grade is within the valid range or not.
### assertGr(uint grade)
The assertGr() function uses the assert() statement to perform the same as checkGr().
## Usage

1. Compile the smart contract using a Solidity compiler of version 0.8.0 or higher.
2. Deploy the compiled contract on a compatible Ethereum network.
3. Call the desired function (CheckGR() ,Assertgr())to perform the operation.
4. Handle the exceptions as necessary based on the function used.



## Authors
Govind Pandey
## License

This smart contract is licensed under the MIT License.
