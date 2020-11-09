pragma solidity ^0.6.0;

contract Challenge_One{

    struct User{
        string name;
        uint age;
    }
    
    mapping(address => User) userValues;
    
    function setValues(string memory _name, uint _age) public {
        userValues[msg.sender].name= _name;
        userValues[msg.sender].age= _age;
    }
    
    function getValues() view public returns (string memory _name, uint _age){
        _name = userValues[msg.sender].name;
        _age = userValues[msg.sender].age;
        return (_name, _age);
    }
}
