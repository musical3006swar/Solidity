// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// contract information
// {
//     uint public age;
//     // =26;
//     string public name = "Swar";

//     // function getAge() public view returns(uint)
//     // {
//     //     return age;
//     // }
//     // function setAge(uint _age) public 
//     // {
//     //         age = _age;
//     // }
//     constructor(uint _age)
//     {
//         age = _age;
//     }
//     function setData(uint _age, string memory _name) public 
//     {
//         age = _age;
//         name = _name;
//     }

// }

// contract Localvar{
//     function testvar(int _num) public pure returns(uint,string memory)
//     {
//         // uint age=10;
//         // string memory name = "makkhi";
//         // age = 56;
//         // return (age,name);
//         int num = _num;
//         string memory out;
//         if(num < 0){
//             out = "Less than zero";
//         }
//         else if(num==0){
//             out = "zero";
//         }
//         else{
//             out="above zero";
//         }
//         return (num, out);
//     }
// }

pragma solidity ^0.8.0;

contract ComplexData{
    uint [] public arr;
    function pushElement(uint value)public {
        arr.push(value);

    }

    function popElement() public {
        arr.pop();
    }
    function getLength() public view returns(uint){
        return arr.length;
    }
    
}