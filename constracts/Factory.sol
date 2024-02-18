// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Lacos de repeticoes 

contract Factory {
    function fact(uint256 _n) public pure returns(uint256){
        uint256 i;
        uint256 f = 1;
        for(i=1; i <= _n; i++ ){
            f = f * i;
        }
        return f;
    }

      function factw(uint256 _n) public pure returns(uint256){
        uint256 i = 1;
        uint256 f = 1;
        while(i <= _n){
            f = f * i;
            //Muito cuidado pois se esquecer de colocar esse i++, ocorre o estouro dos gas -- usa todo os gas e pode custar muito caro 
            i++;
        }
        return f;
    }
}