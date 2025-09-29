import 'dart:collection';

import 'package:flutter/services.dart';

import 'tnk_rwd_n_vad_platform_interface.dart';

class TnkRwdNVad {
  Future<String?> getPlatformVersion() {
    return TnkRwdNVadPlatform.instance.getPlatformVersion();
  }

  Future<String?> setCategoryAndFilter(int category, int filter) {
    return TnkRwdNVadPlatform.instance.setCategoryAndFilter(category, filter);
  }

  Future<String?> openEventWebView(int eventId, [String checkParam = ""]) {
    return TnkRwdNVadPlatform.instance.openEventWebView(eventId, checkParam);
  }

  Future<String?> showCustomTapActivity(String url, String deep_link) {
    return TnkRwdNVadPlatform.instance.showCustomTapActivity(url, deep_link);
  }

  Future<String?> showAdList(String title, [int appId = 0]) {
    return TnkRwdNVadPlatform.instance.showAdList(title, appId);
  }

  Future<String?> setUserName(String userName) {
    return TnkRwdNVadPlatform.instance.setUserName(userName);
  }

  Future<String?> setCOPPA(bool coppa) {
    return TnkRwdNVadPlatform.instance.setCOPPA(coppa);
  }

  Future<String?> showATTPopup() {
    return TnkRwdNVadPlatform.instance.showATTPopup();
  }

  Future<int?> getEarnPoint() {
    return TnkRwdNVadPlatform.instance.getEarnPoint();
  }

  Future<String?> setNoUsePointIcon() {
    return TnkRwdNVadPlatform.instance.setNoUsePointIcon();
  }

  Future<String?> setNoUsePrivacyAlert() {
    return TnkRwdNVadPlatform.instance.setNoUsePrivacyAlert();
  }

  Future<int?> getQueryPoint() {
    return TnkRwdNVadPlatform.instance.getQueryPoint();
  }

  Future<String?> purchaseItem(String itemId, int cost) {
    return TnkRwdNVadPlatform.instance.purchaseItem(itemId, cost);
  }

  Future<String?> withdrawPoints(String description) {
    return TnkRwdNVadPlatform.instance.withdrawPoints(description);
  }

  Future<String?> setCustomUI(HashMap<String, String> colorMap) {
    return TnkRwdNVadPlatform.instance.setCustomUI(colorMap);
  }

  // 오퍼월 close 콜백 메소드
  Future<String?> getOfferWallEvent(MethodCall methodCall) {
    return TnkRwdNVadPlatform.instance.getOfferWallEvent(methodCall);
  }

  Future<String?> getPlacementJsonData(String placementId) {
    return TnkRwdNVadPlatform.instance.getPlacementJsonData(placementId);
  }

  Future<String?> onItemClick(String app_id) {
    return TnkRwdNVadPlatform.instance.onItemClick(app_id);
  }

  Future<String?> setUseTermsPopup(bool isUse) {
    return TnkRwdNVadPlatform.instance.setUseTermsPopup(isUse);
  }

  Future<String?> setCustomUnitIcon(HashMap<String, String> map) {
    return TnkRwdNVadPlatform.instance.setCustomUnitIcon(map);
  }

  Future<String?> closeAllView() {
    return TnkRwdNVadPlatform.instance.closeAllView();
  }

  Future<String?> closeOfferwall() {
    return TnkRwdNVadPlatform.instance.closeOfferwall();
  }

  Future<String?> closeAdDetail() {
    return TnkRwdNVadPlatform.instance.closeAdDetail();
  }

  Future<String?> setCustomUIDefault(HashMap<String, String> map) {
    return TnkRwdNVadPlatform.instance.setCustomUIDefault(map);
  }

  Future<String?> presentAdDetailView(int appId, [int actionId = 0]) {
    return TnkRwdNVadPlatform.instance.presentAdDetailView(appId, actionId);
  }

  Future<String?> adJoin(int appId, [int actionId = 0]) {
    return TnkRwdNVadPlatform.instance.adJoin(appId, actionId);
  }

  Future<String?> adAction(int appId, [int actionId = 0]) {
    return TnkRwdNVadPlatform.instance.adAction(appId, actionId);
  }
}
