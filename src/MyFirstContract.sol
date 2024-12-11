//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyFirstContract{
  
  string public greetings = "Hello Solidity";
    uint num;
    function updateGreeting(string memory _greetings) public returns(string memory){
    greetings = _greetings;
    return greetings;
    }

       function transfer(address _receiver, uint amount) public payable{
        require(msg.value > amount, "Not Enough!");
         (bool success,) = _receiver.call{value: amount}("");
        require(success, "Transfer failed");
    }
}
