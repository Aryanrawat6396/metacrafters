## Description
The provided Solidity contract represents a simple token contract named "MyToken" with basic functionality to mint (create) and burn (destroy) tokens. Below is a breakdown of the contract's features:

1. Public Variables:
   - `TokenName`: A string variable that stores the name of the token (e.g., "META").
   - `TokenAbbr`: A string variable that stores the abbreviation of the token (e.g., "MTA").
   - `TotalSupply`: An unsigned integer variable that stores the total supply of the token. It is initially set to 0.

2. Mapping:
   - `balances`: A mapping that associates addresses with their corresponding token balances. It keeps track of the balance of each address.

3. Mint Function:
   - The `mint` function takes two parameters: `_address` (address) and `_value` (uint).
   - It increases the total supply of the token by the `_value` parameter.
   - It increases the balance of the `_address` by the `_value` parameter.

4. Burn Function:
   - The `burn` function takes two parameters: `_address` (address) and `_value` (uint).
   - It checks if the balance of the `_address` is greater than or equal to the `_value` to ensure that the burning operation can be executed.
   - If the condition is met, it deducts the `_value` from the total supply and the balance of the `_address`.


If you intend to use this contract for any production deployment or real-world token, it is strongly recommended to consider using the well-established ERC-20 token standard, which incorporates these features and has undergone extensive security audits. Always exercise caution and thoroughly review your smart contracts before deploying them to the blockchain.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // public variables here
  string public TokenName = "META";
  string public TokenAbbr = "MTA";
  uint public TotalSupply = 0;

    // mapping variable here
  mapping(address => uint )public balances ;
    // mint function
  function mint(address _address, uint _value ) public {
    TotalSupply += _value;
    balances[_address] += _value;
    }
    // burn function

    function burn(address _address, uint _value ) public {
     if(balances[_address] >= _value){   
     TotalSupply -= _value;
    balances[_address] -= _value;
    }
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
