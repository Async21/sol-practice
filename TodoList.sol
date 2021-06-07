pragma solidity ^0.5.16;

/**
 * The ToDoList contract does this and that...
 */
contract ToDoList {
  uint public taskCount = 0;
struct Task {
   uint id;
   string content;
   bool completed;
}

	constructor() public {
		createTask("test task ignore");
	}
  mapping(uint => Task) public tasks;

  function createTask(string memory _content) public {
  	taskCount ++;
	tasks[taskCount] = Task(taskCount, _content, false);  	
  }
  
}
