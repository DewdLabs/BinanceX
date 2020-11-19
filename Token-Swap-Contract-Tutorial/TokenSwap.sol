pragma solidity >=0.4.22 <0.7.0;

import "./BEP20.sol"

contract TokenSwap{
    BEP20 public appleToken;
    address public appleOwner;
    
    BEP20 public orangesToken;
    address public orangeOwner;
    
    function swap(uint amount, uint amount) public{
        //verify address and balance
        //TODO
        
        //Call transfer for appleToken
        //TODO
        
        //Call transfer for orangesToken
        //TODO
    }
    
    function transfer(BEP20 token, address sender, address recipient, uint amount) private {
       //TODO
    }
}
