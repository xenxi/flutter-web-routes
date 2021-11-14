import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/application/counter/counter_provider.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_circle_button.dart';
import 'package:provider/provider.dart';

class ProviderCounterView extends StatelessWidget {
  static String route = 'provider-couenter';
  const ProviderCounterView({Key? key}) : super(key: key);

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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildText(context, counter: provider.counter),
        const SizedBox(
          height: 20,
        ),
        _buildActions(provider),
      ],
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
