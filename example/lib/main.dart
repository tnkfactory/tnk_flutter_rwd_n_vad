import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:tnk_rwd_n_vad/tnk_rwd_n_vad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _tnkRwdNVadPlugin = TnkRwdNVad();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      _tnkRwdNVadPlugin.setUserName("asdf");
      platformVersion = await _tnkRwdNVadPlugin.getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  String _tnkResult = "";

  Future<void> showAdList() async {
    // _tnkRwdNVadPlugin.showATTPopup();
    _tnkRwdNVadPlugin.setCOPPA(false);
    _tnkRwdNVadPlugin.setUserName("tnk_test");
    // String platformVersion;
    //
    // try {
    //   await _tnkRwdNVadPlugin.setUserName("testUser");
    //   await _tnkRwdNVadPlugin.setCOPPA(false);
    //
    //   _tnkRwdNVadPlugin.setUseTermsPopup(false);
    //   // _tnkFlutterRwdPlugin.setCategoryAndFilter(4, 0);
    //   platformVersion = await _tnkRwdNVadPlugin.showAdList("미션 수행하기") ?? 'Unknown platform version';
    // } on PlatformException {
    //   platformVersion = 'Failed to get platform version.';
    // }
    //
    // // sleepAndClose();
    // if (!mounted) return;
    //
    // setState(() {
    //   _tnkResult = platformVersion;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DataTable(
                        columns: const [DataColumn(label: Text('결과'))],
                        rows: [
                          DataRow(cells: [DataCell(Text(_tnkResult))]),
                        ],
                      ),
                    ],
                  ),
                  OverflowBar(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ElevatedButton(
                          //   onPressed: () {
                          //     getJsonAdList();
                          //   },
                          //   style: ElevatedButton.styleFrom(
                          //       foregroundColor: Colors.white,
                          //       backgroundColor: Colors.redAccent,
                          //       shadowColor: Colors.redAccent,
                          //       elevation: 5),
                          //   child: const Text("TEST"),
                          // ),
                          ElevatedButton(
                            onPressed: () {
                              showAdList();
                            },
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, shadowColor: Colors.blueAccent, elevation: 10),
                            child: const Text('내 포인트'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showAdList();
                            },
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, shadowColor: Colors.blueAccent, elevation: 10),
                            child: const Text('적립가능한 포인트'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // purchaseItem(_itemId, _cost);
                            },
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.redAccent, shadowColor: Colors.redAccent, elevation: 10),
                            child: const Text('테스트구매'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // withdrawPoints("테스트 인출");
                            },
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.redAccent, shadowColor: Colors.redAccent, elevation: 10),
                            child: const Text('테스트인출'),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // presentAdDetailView(227796);

                              // onAdItemClick("726941");
                            },
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.redAccent, shadowColor: Colors.redAccent, elevation: 10),
                            child: const Text('광고상세 진입'),
                          ),

                          ElevatedButton(
                            onPressed: () {
                              // setUserName();
                              // onAdItemClick("726941");
                            },
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.redAccent, shadowColor: Colors.redAccent, elevation: 10),
                            child: const Text('set username'),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // adJoin(227796);
                            },
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.purpleAccent, shadowColor: Colors.purpleAccent, elevation: 10),
                            child: const Text('Ad Join'),
                          ),

                          ElevatedButton(
                            onPressed: () {
                              // adAction(227796);
                            },
                            style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.purpleAccent, shadowColor: Colors.purpleAccent, elevation: 10),
                            child: const Text('Ad Action'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton(
                onPressed: () {
                  // 원하는 동작 작성
                  showAdList();
                },
                child: const Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.tv, size: 20), SizedBox(height: 4), Text("오퍼월", style: TextStyle(fontSize: 10))]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
