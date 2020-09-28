## Para usar os contratos solidity com ruby tem a gem `ethereum-ruby`.
## Usando a gem para utilizar um contrato:

## No IRB
```ruby
  client = Ethereum::IpcClient.new("ethereum_testnet/geth.ipc")

  init = Ethereum::Initializer.new("CheckPresence.sol", client)
  init.build_all

  check_presence_instance = SimpleNameRegistry.new('cassiano', '05-05-2020')
  check_presence_instance.call_get_presence
```
