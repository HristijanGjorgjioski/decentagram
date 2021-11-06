pragma solidity ^0.5.0;

contract Decentragram {
  string public name = "Decentragram";

  //* Store Images
  mapping(uint => Image) public images;
  struct Image {
    uint id;
    string hash;
    string description;
    unit tipAmount;
    address payable author;
  }

  //* Create Images
  function uploadImage() public {
    
  }

  //* Tip Images
}
