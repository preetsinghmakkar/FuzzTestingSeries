## Reason of the Failure is Underflow/Overflow Condition because we use solidity 0.7.0 version.

## It does not automatically check safe Math

## Echidna Caller

- Echidna Caller is an EOA Account
- Now it will call the functions as a user
  ```bash
   address echidna_caller = msg.sender;
  ```

## For fuzz testing using Echidna We have to declare function using echidna
