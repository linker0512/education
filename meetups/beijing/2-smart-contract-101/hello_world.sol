pragma lity ^1.2.4;

contract Human {

  address public owner;

    modifier onlyOwner() {
        assert(msg.sender == owner);
        _;
    }

    constructor () public {
        owner = msg.sender;
    }
    
  function greet() pure returns (string) {
    return "Hello world";
  }

  function terminate() external onlyOwner {
    selfdestruct(owner);
  }
}