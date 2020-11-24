pragma solidity >=0.4.22 <0.7.0;

//Below are the 6 functions needed to implement the erc20 standard
interface BEP20 {
  function totalSupply() external view returns (uint256);
  function balanceOf(address account) external view returns (uint256);
  function transfer(address recipient, uint256 amount) external returns (bool);
  function allowance(address owner, address spender) external view returns (uint256);
  function approve(address spender, uint256 value) external returns (bool);
  function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
  function decimals(uint8 digits) external returns (uint8);
  event Transfer(address from, address to, uint256 value);
  event Approval(address owner, address spender, uint256 value);
}

//The BEP20 standard shares the same 6 functions from ERC20
contract OrangeToken is BEP20 {
    
  mapping (address => uint) balances;
  
  function totalSupply() external view returns (uint256){
    //TODO
  }
  
  function balanceOf(address account) external view returns (uint256){
    //TODO
  }
  
  function transfer(address recipient, uint256 amount) external returns (bool){
    //TODO
  }
  
  function allowance(address owner, address spender) external view returns (uint256){
    //TODO
  }
  
  function approve(address spender, uint256 value) external returns (bool){
    //TODO
  }
  
  function transferFrom(address sender, address recipient, uint256 amount) external returns (bool){
    //TODO
  }
  
  //Returns the name of the token - e.g. "MyToken"
  function name() external returns (string  memory){
    //TODO
  }
  
  //Returns the symbol of the token. E.g. “HIX”.
  function symbol() external returns (string  memory){
    //TODO
  }
  
  //Returns the number of decimals the token uses
  function decimals() external returns (uint8){
    //TODO
  }
}
