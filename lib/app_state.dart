import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _userName = await secureStorage.getString('ff_userName') ?? _userName;
    });
    await _safeInitAsync(() async {
      _userId = await secureStorage.getString('ff_userId') ?? _userId;
    });
    await _safeInitAsync(() async {
      _search = await secureStorage.getString('ff_search') ?? _search;
    });
    await _safeInitAsync(() async {
      _selectedPill =
          await secureStorage.getString('ff_selectedPill') ?? _selectedPill;
    });
    await _safeInitAsync(() async {
      _bookmark = await secureStorage.getBool('ff_bookmark') ?? _bookmark;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _locationServiceStatus = false;
  bool get locationServiceStatus => _locationServiceStatus;
  set locationServiceStatus(bool value) {
    _locationServiceStatus = value;
  }

  String _userName = '홍길동';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    secureStorage.setString('ff_userName', value);
  }

  void deleteUserName() {
    secureStorage.delete(key: 'ff_userName');
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
    secureStorage.setString('ff_userId', value);
  }

  void deleteUserId() {
    secureStorage.delete(key: 'ff_userId');
  }

  String _search = '';
  String get search => _search;
  set search(String value) {
    _search = value;
    secureStorage.setString('ff_search', value);
  }

  void deleteSearch() {
    secureStorage.delete(key: 'ff_search');
  }

  String _selectedPill = '';
  String get selectedPill => _selectedPill;
  set selectedPill(String value) {
    _selectedPill = value;
    secureStorage.setString('ff_selectedPill', value);
  }

  void deleteSelectedPill() {
    secureStorage.delete(key: 'ff_selectedPill');
  }

  bool _bookmark = false;
  bool get bookmark => _bookmark;
  set bookmark(bool value) {
    _bookmark = value;
    secureStorage.setBool('ff_bookmark', value);
  }

  void deleteBookmark() {
    secureStorage.delete(key: 'ff_bookmark');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
