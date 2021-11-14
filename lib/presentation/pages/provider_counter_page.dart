import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/application/counter/counter_provider.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_navbar_menu.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_circle_button.dart';
import 'package:provider/provider.dart';

class ProviderCounterPage extends StatelessWidget {
  static String route = 'provider-couenter';
  const ProviderCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const _BuildPageBody(),
    );
  }
}

class _BuildPageBody extends StatelessWidget {
  const _BuildPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustumNavbarMenu(),
          const Spacer(),
          _buildText(context, counter: provider.counter),
          const SizedBox(
            height: 20,
          ),
          _buildActions(provider),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildText(BuildContext context, {required int counter}) => Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Counter: $counter',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      );

  Widget _buildActions(CounterProvider provider) => FittedBox(
        fit: BoxFit.cover,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCircleButton(
              iconData: Icons.remove,
              color: Colors.red,
              onPressed: () => provider.decrement(),
            ),
            CustomCircleButton(
              iconData: Icons.add,
              color: Colors.green,
              onPressed: () => provider.increment(),
            ),
          ],
        ),
      );
}
