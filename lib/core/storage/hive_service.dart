import 'package:hive_flutter/hive_flutter.dart';

/// Owns local-database startup. Feature boxes are opened by their repositories.
abstract final class HiveService {
  static Future<void> initialize() async {
    await Hive.initFlutter();
  }
}
