// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContactForm {
    struct Person {
        string Name;
        string Address;
        string City;
        string State;
        string Zip;
        string Email;
        string Phone;
    }

    mapping(address => Person) public people;

    constructor() {

    }

    function insert(Person memory person) public {
        people[msg.sender] = person;
    }

    function getOne(address id) public view returns(Person memory) {
        return people[id];
    }

    function updateOne(address id, Person memory person) public {
        people[id] = person;
    }
}