// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Funcoes. 

contract PersonDataStorage {
    string public name;
    uint private age;
    bool internal brazilian; 

    constructor(){
    name = "Jeremias";
    age = 10;
    brazilian = true;
    }


    function setName(string memory _name) public {
        name = _name;
    }

    function setAge(uint _age) public{
        age = _age;
    }

    function getAge() public view returns (uint){
        return age;
    }
    
    function setNationality(bool _br) public {
        brazilian = _br;
    }

    function getNatonality() public view returns (bool){
        return brazilian;
    }

    function addValues(uint _value1, uint _values2)pure internal returns(uint){
        return _value1 + _values2;
    }

    function incrementAge() external {
      age = addValues(age, 1);
    }

}



