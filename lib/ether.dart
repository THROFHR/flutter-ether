library ether;

import 'package:bip39/bip39.dart' as bip39;
import 'package:bip32/bip32.dart' as bip32;
import 'package:web3dart/credentials.dart';
import 'package:web3dart/crypto.dart';

abstract class CoinWalletAbstract {
  String generateMnemonic();  
  String getPrivateKey(String mnemonic);  
  Future<String> getPublicAddress(String privateKey);
}

class CoinWallet implements CoinWalletAbstract {
 @override  
 String generateMnemonic() {
    return bip39.generateMnemonic();
 }
 @override  
 String getPrivateKey(String mnemonic) {
    final seed = bip39.mnemonicToSeed(mnemonic);
    final root = bip32.BIP32.fromSeed(seed);
    final child = root.derivePath("m/44'/60'/0'/0/0");
    final privateKey = bytesToHex(child.privateKey!);
    return privateKey;  
 }
 @override  
 Future<String> getPublicAddress(String privateKey) async {
    final private = EthPrivateKey.fromHex(privateKey);
    final address = await private.extractAddress();    
    return address.toString();
 }
}

