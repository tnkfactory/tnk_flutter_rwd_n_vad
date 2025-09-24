import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tnk_rwd_n_vad/tnk_rwd_n_vad_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelTnkRwdNVad platform = MethodChannelTnkRwdNVad();
  const MethodChannel channel = MethodChannel('tnk_rwd_n_vad');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
