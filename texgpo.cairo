#[contract]
// My very own contract
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;

    // event
    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}

    // event
    //#[event]
    //fn Hello(from: ContractAddress, value: felt252) {}

    // Call hello
    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

    // Starknet is the best!
    // There is no second best!
}
