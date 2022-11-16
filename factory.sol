// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./child_contract.sol";

contract DeterministicDeployFactory {
    event Deploy(address addr);
    address public addr_child;

    function deploy(uint _salt) external {
        address addr;
        bytes memory bytecode = type(vd1).creationCode;
        assembly {
            addr := create2(0, add(bytecode, 0x20), mload(bytecode), _salt)
            if iszero(extcodesize(addr)) {
        revert(0, 0)
      }
      
    }
    addr_child = addr;

    emit Deploy(addr);
    }
}
