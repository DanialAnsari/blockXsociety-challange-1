 pragma solidity ^0.6.0;

contract Challange1{
    
    enum gender{
        MALE,
        FEMALE
    }
    struct myInfo{
        string name;
        uint256 age;
        gender myGender;
    }
    
    uint256 idCounter=0;
    
    mapping(uint256=>myInfo) infoList;
    
    function addInfo(string memory _name, uint256 _age , gender _gender) public {
        infoList[idCounter] = myInfo(_name,_age,_gender);
        idCounter+=1;
    }
}
