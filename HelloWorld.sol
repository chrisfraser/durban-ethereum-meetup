pragma solidity 0.4.19;

contract HelloWorld {
    string greeting;
    
    function setGreeting(string _greeting) public {
        greeting = _greeting;
    }
    
    function sayHello() public constant returns(string) {
        return greeting;
    }
}