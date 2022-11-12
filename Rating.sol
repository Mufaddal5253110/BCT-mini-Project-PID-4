/*
Group Members: 1. Shantanu Aher(BE-A-13)
               2. Prateek Shahabadkar(BE-A-14)
               3. Himanshu Rathore(BE-A-15)
               4. Mufaddal Shakir(BE-A-16)

Mini-Project Title: Develop a blockchain based application- Movie Rating System using 
smart contract and deploy it using Ethereum.
*/

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.1;

contract MyContract{
    
    uint public movieCount;
    mapping(uint => Movie) public movieList;
    constructor (string memory _moviename,uint _rating) public {
        movieCount+=1;
        movieList[movieCount]=Movie(_moviename,_rating);
    }

    struct Movie{
        string _moviename;
        uint rating;
    }
    function addMovie(string memory _moviename,uint  _rating) public{
        movieCount+=1;
        movieList[movieCount]=Movie(_moviename,_rating);
    }
    function returnRating(uint _movieCount) public view returns(string memory,uint){
        return (movieList[_movieCount]._moviename,movieList[_movieCount].rating);
    }
}