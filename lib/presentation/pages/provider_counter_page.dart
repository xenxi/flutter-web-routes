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
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustumNavbarMenu(),
            const Spacer(),
            _buildText(context),
            const SizedBox(
              height: 20,
            ),
            _buildActions(context),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildText(BuildContext context) => Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Counter: ${Provider.of<CounterProvider>(context).counter}',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      );

  Widget _buildActions(BuildContext context) => FittedBox(
        fit: BoxFit.cover,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCircleButton(
              iconData: Icons.remove,
              color: Colors.red,
              onPressed: () =>
                  Provider.of<CounterProvider>(context).decrement(),
            ),
            CustomCircleButton(
              iconData: Icons.add,
              color: Colors.green,
              onPressed: () =>
                  Provider.of<CounterProvider>(context).increment(),
            ),
          ],
        ),
      );
}
