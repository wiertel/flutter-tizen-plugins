import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth_tizen/firebase_auth_tizen.dart';
import 'package:firebase_auth_tizen/firebase_auth_tizen_platform_interface.dart';
import 'package:firebase_auth_tizen/firebase_auth_tizen_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFirebaseAuthTizenPlatform
    with MockPlatformInterfaceMixin
    implements FirebaseAuthTizenPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FirebaseAuthTizenPlatform initialPlatform = FirebaseAuthTizenPlatform.instance;

  test('$MethodChannelFirebaseAuthTizen is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFirebaseAuthTizen>());
  });

  test('getPlatformVersion', () async {
    FirebaseAuthTizen firebaseAuthTizenPlugin = FirebaseAuthTizen();
    MockFirebaseAuthTizenPlatform fakePlatform = MockFirebaseAuthTizenPlatform();
    FirebaseAuthTizenPlatform.instance = fakePlatform;

    expect(await firebaseAuthTizenPlugin.getPlatformVersion(), '42');
  });
}
