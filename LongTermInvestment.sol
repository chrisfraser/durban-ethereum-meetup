pragma solidity 0.4.19;

contract LongTermInvestment {
    mapping(address => uint) public balances ;
    
    event LogDeposit (address sender, uint amount, uint timestamp);

    function deposit() public payable {
        balances[msg.sender] += msg.value;
        LogDeposit(msg.sender, msg.value, block.timestamp);
    }
    
    function getBalance() public constant returns(uint) {
        return balances[msg.sender];
    }
}