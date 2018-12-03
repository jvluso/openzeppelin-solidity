pragma solidity ^0.4.15;

/// @title Individual contract to hold data for a single address for a seperated token
contract AddressData {

    /*
     *  Storage
     */
    uint256 balance;
    mapping (address => uint256) allowances;
    address token;

    constructor() public {
        token = msg.sender;
    }

    function setBalance(uint256 _balance) public {
        require(msg.sender == token);
        balance = _balance;
    }

    function getBalance() public view returns(uint256) {
        require(msg.sender == token);
        return balance;
    }

    function setAllowance(address _spender, uint256 _allowance) public {
        require(msg.sender == token);
        allowances[_spender] = _allowance;
    }

    function getAllowance(address _spender) public view returns(uint256) {
        require(msg.sender == token);
        return allowances[_spender];
    }
}
