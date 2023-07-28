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
