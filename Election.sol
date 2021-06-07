pragma solidity ^0.5.0;

contract Election {
		//modal a candidate //struct stores the attributes 
		struct Candidate {
			uint id;
			string name;
			uint voteCount;
			
		}
		mapping(uint => Candidate) public candidate;  
		uint public candidateCount; //counter
		constructor() public {
			addCandidate("Candidate 1");
			addCandidate("Candidate 2");
			 //without underscore is state variable
		}

	function addCandidate (string memory _name) private {
		candidateCount++;
		candidate[candidateCount] = Candidate(candidateCount, _name, 0);
	}
	
}