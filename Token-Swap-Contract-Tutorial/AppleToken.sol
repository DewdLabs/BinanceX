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
contract AppleToken is BEP20 {
    
  mapping (address => uint) balances;
  
  mapping(address => mapping (address => uint256)) allowed;
  
  uint256 cap = 100;
  
  function totalSupply() external view returns (uint256){
      return cap;
  }
  
  function balanceOf(address account_address) external view returns (uint256){
      return balances[account_address];
  }
  
  function transfer(address recipient, uint256 amount) external returns (bool){
      require(amount <= balances[msg.sender]);//Handle insuficient balance
      balances[msg.sender] = balances[msg.sender] - amount;
      balances[recipient] = balances[recipient] + amount;
      emit Transfer(msg.sender, recipient, amount);
      return true;
  }
  
  function allowance(address owner, address delegate) external view returns (uint256){
    return allowed[owner][delegate];
  }
  
  function approve(address delegate, uint256 amount) external returns (bool){
    allowed[msg.sender][delegate] = amount;
    emit Approval(msg.sender, delegate, amount);
    return true;
  }
  
  function transferFrom(address sender, address recipient, uint256 amount) external returns (bool){
    //Check to make sure you dont send more than you have
    require(amount <= balances[sender]);    
    require(amount <= allowed[sender][msg.sender]);
    
    balances[sender] = balances[sender] - amount;
    allowed[sender][msg.sender] = allowed[sender][msg.sender] - amount;
    balances[recipient] = balances[recipient] + amount;
    emit Transfer(sender, recipient, amount);
    return true;
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
