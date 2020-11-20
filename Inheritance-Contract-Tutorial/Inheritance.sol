pragma solidity >=0.4.22 <0.7.0;

contract ERC20{
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
}

contract BEP20 is ERC20 {
  //The BEP20 standard adds the 3 following functions
  
  //Returns the name of the token - e.g. "MyToken"
  function name() public view returns (string memory){
    //TODO
  }
  
  //Returns the symbol of the token. E.g. “HIX”.
  function symbol() public view returns (string memory){
    //TODO
  }
  
  //Returns the number of decimals the token uses
  function decimals() public view returns (uint8){
    //TODO
  }
}
