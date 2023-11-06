# starknet-simplebank
This repo shows a simple starknet contract using Cairo V1

<br>

## Functional Description ##
3 simple functions are provided in the interface :
- getBalance
- deposit
- withdraw

<br>

## Technical Description ##

### Testing ###
- local testing using Starkli CLI and Katana testing environment


- [Starkli](https://book.starkli.rs/) is the command line tool used to interact with Starknet nodes.
  - To work, starkli requires two files:
   - 1. An account file, with account definition and public information.  
   - 2. A keystore file, with the encrypted private key of the user.

- [Katana](https://book.dojoengine.org/toolchain/katana/overview.html) is a devnode made for Dojo, but extremely
useful to develop any smart contract.

   - In this repos, you can find `katana_account.json` and `katana_key.json`, which are the two
files already configured for the account #1 of default katana configuration.
   - To use them, it's recommended to use a `.env` file, to easily switch you configuration depending
on the network you want to target.

<br>

#### Katana setup ####
- create .env file for testing using Katana with the following :
  - export RPC_STARKNET=http://0.0.0.0:5050/
  - export STARKNET_ACCOUNT=<katana-account.json>
  - export STARKNET_KEYSTORE=<kakanta-key.json>

<br>

#### Starkli Usage ####
- refer to [starknet-main](https://github.com/dtan1/starknet-main) for info

<br>

### Contract Deployment ###
- refer to [starknet-main](https://github.com/dtan1/starknet-main) for info


