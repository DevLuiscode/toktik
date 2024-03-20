import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toktik/main/main.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}
