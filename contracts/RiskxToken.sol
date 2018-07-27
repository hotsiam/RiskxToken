pragma solidity ^0.4.23;

contract RiskxToken {
	string  public name = "Riskx Token";
	string  public symbol = "RIX";
	string  public standard = "Riskx Token v1.0";
	uint256 public totalSupply;

	event Transfer(
		address indexed _from,
		address indexed _to, 
		uint256 _value
	);

	mapping(address => uint256) public balanceOf;

	function RiskxToken (uint256 _initialSupply) public {
		balanceOf[msg.sender] = _initialSupply;
		totalSupply = _initialSupply;
	}
	// Transfer function

		function transfer(address _to, uint256 _value) public returns (bool success) {
	// Exception if account doesnt have enough
		require(balanceOf[msg.sender] >= _value);
		balanceOf[msg.sender] -= _value;
		balanceOf[_to] += _value;

		Transfer(msg.sender, _to, _value); 
	// Transfer event
	// Return a boolean
	// Transfer Event
		return true;
	}
}
