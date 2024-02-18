// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Condicionais 

contract ScholarHistory {
    string public gradeStatus;

    constructor() {
        gradeStatus = "empty";
    }

    function updateGradeStatus(int _value) public {
        if (_value < 0 || _value > 10) {
            gradeStatus = "empty";
        } else {
            if (_value >= 7) {
                gradeStatus = "approved";
            } else {
                if (_value == 0) {
                    gradeStatus = "approved";
                } else {
                    gradeStatus = "reproved";
                }
            }
        }
    }
}
