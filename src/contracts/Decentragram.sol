pragma solidity ^0.5.0;

contract Decentragram {
  string public name = "Decentragram";

  //* Store Images
  uint public imageCount = 0;

  mapping(uint => Image) public images;

  struct Image {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }

  event ImageCreated(
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  //* Create Images
  function uploadImage(string memory _imgHash, string memory _description) public {
    //* Make sure that the image exsist
    require(bytes(_imgHash).length > 0);

    //* Make sure that the description exsist
    require(bytes(_description).length > 0);
    
    //* Make sure that uploader address exsist
    require(msg.sender != address(0x0));

    //* Increment image id
    imageCount++;

    //* Add image to contract
    images[imageCount] = Image(imageCount, _imgHash, _description, 0, msg.sender);

    //* Trigger an event
    emit ImageCreated(imageCount, _imgHash, _description, 0, msg.sender);
  }

  //* Tip Images
}
