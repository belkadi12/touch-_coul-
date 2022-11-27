// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import 'hardhat/console.sol';
import './Main.sol';

abstract contract Ship {
 
  function update(uint x, uint y) public virtual;
  function fire() public virtual returns (uint, uint);
  function place(uint width, uint height) public virtual returns (uint, uint);
}



contract monShip is Ship
{

  function update(uint x, uint y) public override virtual{
    
    }
  

  function fire() public override virtual returns (uint, uint){
      
        return(uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) %     	  50,uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 50);   
    
    }
   
  function place(uint width, uint height) public override virtual returns (uint, uint){

    return(uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) %     	  50,uint(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 50); 
    
    
    }
}
