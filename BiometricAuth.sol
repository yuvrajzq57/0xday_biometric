// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BiometricAuth {
    mapping(address => string) private biometricHashes;

    // Store the hash of biometric data
    function storeBiometricHash(string memory hash) public {
        biometricHashes[msg.sender] = hash;
    }

    // Retrieve the stored hash
    function getBiometricHash() public view returns (string memory) {
        return biometricHashes[msg.sender];
    }
}