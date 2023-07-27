// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage{
    //Basic
    uint256 public favnum;
    function store(uint256 _favnum) public {
        favnum = _favnum;
        //favnum += favnum*2;

    }
    //this is a view function where we can read
    function retrieve() public view returns(uint256){
        return favnum;
    }
    //in pure function we could not have read from data but we could only return  a specific value like return 7
}
