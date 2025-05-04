    import 'package:flutter/material.dart';
    import '../widgets/app_button.dart';

    class HomeScreen extends StatefulWidget {
    const HomeScreen({super.key});

    @override
    State<HomeScreen> createState() => _HomeScreenState();
    }

    class _HomeScreenState extends State<HomeScreen> {
    bool isLoading = false;

    void handlePress() async {
        setState(() => isLoading = true);
        await Future.delayed(const Duration(seconds: 2));
        setState(() => isLoading = false);

        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('دکمه کلیک شد!')),
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('AppButton Example'),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        body: Center(
            child: AppButton(
            label: 'ورود',
            icon: Icons.login,
            isLoading: isLoading,
            isEnabled: true,
            onPressed: handlePress,
            ),
        ),
        );
    }
}
