script;

use storage_enum_abi::*;

#[cfg(experimental_new_encoding = false)]
const CONTRACT_ID = 0xc601d11767195485a6654d566c67774134668863d8c797a8c69e8778fb1f89e9;
#[cfg(experimental_new_encoding = true)]
const CONTRACT_ID = 0xd3da5ae426182db1a2a6c900ad374a9641dabfdebe610b39f0e9c5186cedf39b; // AUTO-CONTRACT-ID ../../test_contracts/storage_enum_contract --release

fn main() -> u64 {
    let caller = abi(StorageEnum, CONTRACT_ID);
    let res = caller.read_write_enums();
    res
}
