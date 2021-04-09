// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Storage {
  uint private value;

  event ValueUpdated(address updater, uint value);

  function setValue(uint _value) public {
      value = _value;
      emit ValueUpdated(msg.sender, value);
  }

  function getValue() public view returns(uint value_){
      return value;
  }
}
