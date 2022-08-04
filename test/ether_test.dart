import 'package:flutter_test/flutter_test.dart';

import 'package:ether/ether.dart';

void main() {
  test('adds one to input values', () async {
    final wallet = CoinWallet();
    // var mnemonic = wallet.generateMnemonic();
    // print(mnemonic);
    // var privateKey = wallet.getPrivateKey(mnemonic);
    // print(privateKey);
    // final publicAddress = await wallet.getPublicAddress('0a3df6b868c0a39b4677c6bdce7775015e063925a3e4f25f73328c24e1a515e7');
    // print(publicAddress);

    expect(await wallet.getPublicAddress('0a3df6b868c0a39b4677c6bdce7775015e063925a3e4f25f73328c24e1a515e7'), "0xe73e1709ef89aaca26c6b6b9ed229b1b0e6323bd");
  });
}
