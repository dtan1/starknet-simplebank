#[starknet::interface]
trait ISimpleBank<TContractState> {
    fn deposit(ref self: TContractState, amount: u128);
    fn withdraw(ref self: TContractState, amount: u128);
    fn getBalance(self: @TContractState) -> u128;
}

#[starknet::contract]
mod SimpleBank {
    use starknet::get_caller_address;
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        balance : u128
    }

    #[external(v0)]
    impl SimpleBank of super::ISimpleBank<ContractState> {
        fn deposit(ref self: ContractState, amount: u128) {
            self.balance.write(amount);
        }
        fn withdraw(ref self: ContractState, amount: u128) {
            let current_balance: u128 = self.balance.read();
            let new_balance : u128 = current_balance - amount;
            self.balance.write(new_balance);
        }
        fn getBalance(self: @ContractState) -> u128 {
            self.balance.read()
        }
    }






}