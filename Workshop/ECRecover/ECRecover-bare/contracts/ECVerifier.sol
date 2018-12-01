pragma solidity ^0.5.0;

import "./ECTools.sol";

contract ECVerifier {

    function verify(bytes32 originalData, bytes memory signature) public pure returns(address) {
        return ECTools.prefixedRecover(originalData, signature);
    }

}