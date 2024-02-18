// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Estrutura de dados lineares 
contract Petition{

    string[3] private names;
    uint256 public nameCount;

    constructor () {
        nameCount = 0;
    }

    function registerName(string memory _name) {
        names[nameCount] = _name;
        //Se nao incrementar ++ o nome sempre sera sobreposto 
        nameCount++;
    }

}
