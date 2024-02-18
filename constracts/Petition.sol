// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Estrutura de dados lineares 
contract Petition{

    string[3] private names;
    uint256 public nameCount;

    constructor () {
        nameCount = 0;
    }

    function registerName(string memory _name) public {
        if(nameCount < 3){
        names[nameCount] = _name;
        //Se nao incrementar ++ o nome sempre sera sobreposto 
        nameCount++;
        }
        return "Petition is full";
    }

    function getName(uint256 _id) public view returns (string memory) {
        if(_id < 3){
            return names[_id];
        }
        return "Error: Index out of bounds";

    }

    function isPetitionFull() public view returns(bool) {
         return nameCount >= 3;
    }

}
