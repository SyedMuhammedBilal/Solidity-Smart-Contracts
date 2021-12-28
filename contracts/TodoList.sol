// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TodoList {

    struct TodoSchema {
        string todoName;
        uint32 id;
        bool isCompleted;
    }

    TodoSchema[] public todo;
    mapping(address => TodoSchema[]) public todoMapping;

    function addTodo(string memory _title, uint32 _id, bool _check) external {
        TodoSchema memory myTodo = TodoSchema({
            todoName: _title,
            id: _id,
            isCompleted: _check
        });

        todo.push(myTodo);
    }

    function viewTodo(uint _key) external view returns (TodoSchema memory) {
        return todo[_key];
    }

    function updateTodo(uint _key, string memory _todoName) view external {
        TodoSchema memory _todo = todo[_key];
        _todo.todoName = _todoName;
    }

    function deleteTodo(uint32 _key) external {
        delete todo[_key];
    }
}