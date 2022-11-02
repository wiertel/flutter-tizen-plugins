import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth_tizen/firebase_auth_tizen_method_channel.dart';

void main() {
  MethodChannelFirebaseAuthTizen platform = MethodChannelFirebaseAuthTizen();
  const MethodChannel channel = MethodChannel('firebase_auth_tizen');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
