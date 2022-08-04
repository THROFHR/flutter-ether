
## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage


```dart
    final wallet = CoinWallet();
    var mnemonic = wallet.generateMnemonic();
    print(mnemonic); // evil pistol omit wood milk predict address pave vivid trap buddy trade
    var privateKey = wallet.getPrivateKey(mnemonic);
    print(privateKey); // c4a84f2391055d870e35edce78c695fcf611658c2dfcd4cfb0a069df7c06e5ba
    final publicAddress = await wallet.getPublicAddress(privateKey);
    print(publicAddress); // 0x92104063e817aa931a59c2e8db01f0bdc63854cc
```
