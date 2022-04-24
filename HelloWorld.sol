// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


// Contract
contract HelloWorld{

    //Number to be stored
    uint private numberToBeStored;

    //Store number function. public so that anyone can send data
    function storeNumber(uint _number)public {
        //We equate our number to the value from the outside
        numberToBeStored = _number;
    }

    //The view here tells us that we will only read from the chain. This function does not charge gas fee. Return returns data.
    function retrieveNumber()public view returns(uint){
        //returns our number
        return numberToBeStored;
    }

}