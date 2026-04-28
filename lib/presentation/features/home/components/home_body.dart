import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_values.dart';

import '../../../../providers/greeting_provider.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greetingValue = ref.watch(greetingProvider);

    return Center(
      child: Padding(
        padding: AppPadding.allM,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              greetingValue,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppPadding.m),
            const Text(
              'A High Performance Payment App',
            ),
          ],
        ),
      ),
    );
  }
}
