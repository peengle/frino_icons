import 'dart:io';

void main() {
  final input = File('../lib/frino_icons.dart');
  final output = File('lib/frino_icon_map.dart');

  final regex = RegExp(r'static const IconData (\w+)\s*=');

  final lines = input.readAsLinesSync();
  final buffer = StringBuffer();

  buffer.writeln("import 'package:flutter/widgets.dart';");
  buffer.writeln("import 'package:frino_icons/frino_icons.dart';");
  buffer.writeln('');
  buffer.writeln('const Map<String, IconData> FRINO_ICON_MAP = {');

  for (final line in lines) {
    final match = regex.firstMatch(line);
    if (match != null) {
      final name = match.group(1)!;
      buffer.writeln('  "$name": FrinoIcons.$name,');
    }
  }

  buffer.writeln('};');

  output.writeAsStringSync(buffer.toString());

  print('✅ frino_icon_map.dart generated');
}

