## Description
# Error Handling in Solidity - Module1

This Solidity smart contract demonstrates error handling techniques using the `require`, `assert`, and `revert` statements. Let's explore how error handling is implemented in the code!


The provided Solidity contract, named "Mod1," contains a single function named `number`. Let's break down the contract and the function:

1. Pragma Directive:
   - The contract starts with a `pragma` directive: `pragma solidity ^0.8.7;`. This specifies the version of the Solidity compiler to be used for compiling the contract. In this case, it specifies that the contract is intended to be compiled using Solidity version 0.8.7 or any compatible higher version.

2. Function `number`:
   - The `number` function takes two parameters `_number1` and `_number2`, both of type `uint256` (unsigned integers). The function is marked as `public` and `pure`.
   - The `pure` modifier indicates that the function does not modify the contract's state and only returns a value based on the input provided.
   - The function returns a `string` value.

3. Function Logic:
   - The function starts with a `require` statement that checks if `_number1` is greater than or equal to `_number2`. If not, it will throw an exception with the error message "Number 2 is bigger than the first".
   - It then uses an `assert` statement to check if both `_number1` and `_number2` are greater than 10. The `assert` statement is used to check for internal errors. If the condition is false, it will cause the contract execution to revert with an error.
   - The function then enters an `if` statement to check if `_number1` is equal to `_number2`. If this condition is true, it will revert with the error message "Both the numbers are same".
   - If none of the above conditions are met, the function will return the string message "Yeahhh the functions worked. Well done Aryan Rawat!".

In summary, the `number` function checks the two input numbers `_number1` and `_number2` to ensure that `_number1` is greater than or equal to `_number2`, and both numbers are greater than 10. It also checks if the two numbers are not equal. If all the conditions are met, it will return a success message; otherwise, it will revert with appropriate error messages.

As a reminder, the `pure` modifier indicates that the function does not read from or modify the contract's state, and it only performs computations based on the provided input. This is useful for functions that are intended to be used for data transformations or calculations without interacting with the blockchain state.


If you intend to use this contract for any production deployment or real-world token, it is strongly recommended to consider using the well-established ERC-20 token standard, which incorporates these features and has undergone extensive security audits. Always exercise caution and thoroughly review your smart contracts before deploying them to the blockchain.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
contract Mod1 {
function number(uint256 _number1,uint256 _number2) public pure returns(string memory) {

require(_number1>=_number2, "Number 2 is bigger than the first");

assert(_number1>10 && _number2>10 );

if (_number1 == _number2){

    revert("Both the numbers are same ");
}

return "Yeahhh the functions worked. Well done Aryan Rawat !";
} 
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint and burn function. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "mint" and "burn" function. Finally, click on the "transact" button to execute the functions.

## Authors

Aryan Rawat 
- 📫 How to reach me **aryan.rawat.5621@gmail.com**

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
