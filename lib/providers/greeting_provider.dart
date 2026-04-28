import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'greeting_provider.g.dart';

@riverpod
String greeting(Ref ref) {
  return 'Welcome to FandsPay with Riverpod!';
}
