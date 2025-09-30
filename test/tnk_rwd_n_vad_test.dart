import 'dart:collection';

import 'package:flutter_test/flutter_test.dart';
import 'package:tnk_rwd_n_vad/tnk_rwd_n_vad.dart';
import 'package:tnk_rwd_n_vad/tnk_rwd_n_vad_platform_interface.dart';
import 'package:tnk_rwd_n_vad/tnk_rwd_n_vad_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTnkRwdNVadPlatform
    with MockPlatformInterfaceMixin
    implements TnkRwdNVadPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> adAction(int appId, [int actionId = 0]) {
    // TODO: implement adAction
    throw UnimplementedError();
  }

  @override
  Future<String?> adJoin(int appId, [int actionId = 0]) {
    // TODO: implement adJoin
    throw UnimplementedError();
  }

  @override
  Future<String?> closeAdDetail() {
    // TODO: implement closeAdDetail
    throw UnimplementedError();
  }

  @override
  Future<String?> closeAllView() {
    // TODO: implement closeAllView
    throw UnimplementedError();
  }

  @override
  Future<String?> closeOfferwall() {
    // TODO: implement closeOfferwall
    throw UnimplementedError();
  }

  @override
  Future<int?> getEarnPoint() {
    // TODO: implement getEarnPoint
    throw UnimplementedError();
  }

  @override
  Future<String?> getOfferWallEvent(methodCall) {
    // TODO: implement getOfferWallEvent
    throw UnimplementedError();
  }

  @override
  Future<String?> getPlacementJsonData(String placementId) {
    // TODO: implement getPlacementJsonData
    throw UnimplementedError();
  }

  @override
  Future<int?> getQueryPoint() {
    // TODO: implement getQueryPoint
    throw UnimplementedError();
  }

  @override
  Future<String?> onItemClick(String app_id) {
    // TODO: implement onItemClick
    throw UnimplementedError();
  }

  @override
  Future<String?> openEventWebView(int eventId, [String checkParam = ""]) {
    // TODO: implement openEventWebView
    throw UnimplementedError();
  }

  @override
  Future<String?> presentAdDetailView(int appId, [int actionId = 0]) {
    // TODO: implement presentAdDetailView
    throw UnimplementedError();
  }

  @override
  Future<String?> purchaseItem(String itemId, int cost) {
    // TODO: implement purchaseItem
    throw UnimplementedError();
  }

  @override
  Future<String?> setCOPPA(bool coppa) {
    // TODO: implement setCOPPA
    throw UnimplementedError();
  }

  @override
  Future<String?> setCategoryAndFilter(int category, int filter) {
    // TODO: implement setCategoryAndFilter
    throw UnimplementedError();
  }

  @override
  Future<String?> setCustomUI(HashMap<String, String> colorMap) {
    // TODO: implement setCustomUI
    throw UnimplementedError();
  }

  @override
  Future<String?> setCustomUIDefault(HashMap<String, String> map) {
    // TODO: implement setCustomUIDefault
    throw UnimplementedError();
  }

  @override
  Future<String?> setCustomUnitIcon(HashMap<String, String> map) {
    // TODO: implement setCustomUnitIcon
    throw UnimplementedError();
  }

  @override
  Future<String?> setNoUsePointIcon() {
    // TODO: implement setNoUsePointIcon
    throw UnimplementedError();
  }

  @override
  Future<String?> setNoUsePrivacyAlert() {
    // TODO: implement setNoUsePrivacyAlert
    throw UnimplementedError();
  }

  @override
  Future<String?> setUseTermsPopup(bool isUse) {
    // TODO: implement setUseTermsPopup
    throw UnimplementedError();
  }

  @override
  Future<String?> setUserName(String userName) {
    // TODO: implement setUserName
    throw UnimplementedError();
  }

  @override
  Future<String?> showATTPopup() {
    // TODO: implement showATTPopup
    throw UnimplementedError();
  }

  @override
  Future<String?> showAdList(String title, [int appId = 0]) {
    // TODO: implement showAdList
    throw UnimplementedError();
  }

  @override
  Future<String?> showCustomTapActivity(String url, String deep_link) {
    // TODO: implement showCustomTapActivity
    throw UnimplementedError();
  }

  @override
  Future<String?> withdrawPoints(String description) {
    // TODO: implement withdrawPoints
    throw UnimplementedError();
  }
}

void main() {
  final TnkRwdNVadPlatform initialPlatform = TnkRwdNVadPlatform.instance;

  test('$MethodChannelTnkRwdNVad is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTnkRwdNVad>());
  });

  test('getPlatformVersion', () async {
    TnkRwdNVad tnkRwdNVadPlugin = TnkRwdNVad();
    MockTnkRwdNVadPlatform fakePlatform = MockTnkRwdNVadPlatform();
    TnkRwdNVadPlatform.instance = fakePlatform;

    expect(await tnkRwdNVadPlugin.getPlatformVersion(), '42');
  });
}
