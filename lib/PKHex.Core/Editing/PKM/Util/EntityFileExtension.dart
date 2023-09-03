import 'dart:collection';

import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Util/PKX.dart';

class EntityFileExtension {
  static const String _extensionPB7 = "pb7";
  static const String _extensionPB8 = "pb7";
  static const String _extensionPA8 = "pa8";

  static final UnmodifiableListView<String> extensions7b =
      UnmodifiableListView([_extensionPB7]);

  /// <summary>
  /// Gets an array of valid <see cref="PKM"/> file extensions.
  /// </summary>
  /// <param name="maxGeneration">Maximum Generation to permit</param>
  /// <returns>Valid <see cref="PKM"/> file extensions.</returns>
  static List<String>? getExtensions({int maxGeneration = PKX.generation}) {
    int min = maxGeneration <= 2 || maxGeneration >= 7 ? 1 : 3;
    int size = maxGeneration - min + 1 + 6;
    // Array
    List<String> result = List<String>.filled(size, "", growable: false);
    for (int i = min; i <= maxGeneration; i++) {
      result.add("pk${i}");
    }
    if (maxGeneration >= 3) {
      result.add("ck3"); // colosseum
      result.add("xk3"); // xd
    }
    if (maxGeneration >= 4) {
      result.add("bk4"); // battle revolution
      result.add("rk4"); // My Pokemon Ranch
    }
    if (maxGeneration >= 7) result.add(_extensionPB7); // let's go
    if (maxGeneration >= 8)
      result.add(_extensionPB8); // Brilliant Diamond & Shining Pearl
    if (maxGeneration >= 8) result.add(_extensionPA8); // Legends: Arceus

    // Returning array
    return result.toList(growable: false);
  }
}
