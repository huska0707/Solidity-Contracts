// you can define your own type by creating a struct
// They are useful for grouping together related data
// Struct can be declared outside of a contract and imported in another contract

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TODO {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));

        todos.push(Todo({text: _text, completed: true}));

        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    function get(
        uint256 _index
    ) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];

        return (todo.text, todo.completed);
    }
}
