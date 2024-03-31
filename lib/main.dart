import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:toktik/main/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: const String.fromEnvironment('supabaseUrl'),
    anonKey: const String.fromEnvironment('supabaseAnonKey'),
  );
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}
