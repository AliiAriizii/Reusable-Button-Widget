    import 'package:flutter/material.dart';

    class AppButton extends StatelessWidget {
    final String label;
    final IconData icon;
    final VoidCallback onPressed;
    final bool isLoading;
    final bool isEnabled;
    final Color? backgroundColor;
    final Color? textColor;

    const AppButton({
        super.key,
        required this.label,
        required this.icon,
        required this.onPressed,
        this.isLoading = false,
        this.isEnabled = true,
        this.backgroundColor,
        this.textColor,
    });

    @override
    Widget build(BuildContext context) {
        final theme = Theme.of(context);
        final Color bgColor = backgroundColor ?? theme.colorScheme.primary;
        final Color fgColor = textColor ?? theme.colorScheme.onPrimary;

        return ElevatedButton.icon(
        onPressed: isEnabled && !isLoading ? onPressed : null,
        icon: isLoading
            ? SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(fgColor),
                ),
                )
            : Icon(icon, color: fgColor),
        label: Text(
            isLoading ? 'لطفاً صبر کنید...' : label,
            style: TextStyle(color: fgColor),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        );
    }
    }
