pragma solidity ^0.4.11;
// We have to specify what version of compiler this code will compile with

contract History {
  /*
  struct Eleccion {
    bytes8 folio;
    bytes4 eleccion;
    bytes6 incentivos;
  }
  */

  mapping (bytes16 => bytes16[]) public populationHistory;


  function personExistence(bytes16 key, bytes16 info) returns (bool) {
    if (populationHistory[key].length == 0) {
        addPerson(key,info);
        return false;
    } else {
        return true;
    }    
  }

  function addPerson(bytes16 key, bytes16 info) returns (bool) {
    populationHistory[key] = info;
  }

  function getHistory(bytes16 key) returns (bytes16[] sList) {
      if(personExistence(key)){
          return populationHistory[key];
      }
  }
}