pragma solidity >=0.4.22 <0.7.0;

//Below are the 6 functions needed to implement the erc20 standard
interface ERC20 {
  function totalSupply() external view returns (uint256);
  function balanceOf(address account) external view returns (uint256);
  function transfer(address recipient, uint256 amount) external returns (bool);
  function allowance(address owner, address spender) external view returns (uint256);
  function approve(address spender, uint256 value) external returns (bool);
  function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
  event Transfer(address from, address to, uint256 value);
  event Approval(address owner, address spender, uint256 value);
}

//The BEP20 standard shares the same 6 functions from ERC20
contract BEP20 is ERC20 {
  //implement BEP20 here
}
