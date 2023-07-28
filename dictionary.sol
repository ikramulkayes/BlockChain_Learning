// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage{
    //Basic
    mapping (string =>uint256) public namedic;
    uint256 public favnum;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    Person[] public listOfPeople; // here only person object can be pushed
    function store(uint256 _favnum) public {
        favnum = _favnum;
        //favnum += favnum*2;

    }
    //this is a view function where we can read
    function retrieve() public view returns(uint256){
        return favnum;
    }
    //in pure function we could not have read from data but we could only return  a specific value like return 7
    function addPerson(string memory _name, uint256 _favnum) public {// memory callback storage are 3 types of variables memory callbacks are temprary storage is permanent

        listOfPeople.push(Person(_favnum,_name));
        namedic[_name] = _favnum;

    }




}
