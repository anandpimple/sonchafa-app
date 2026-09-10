import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar.large(title: const Text('Sonchafa')),
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverList.list(
            children: [
              Text(
                'Your sari business, at a glance.',
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 20),
              const _MetricCard(
                label: 'Items in stock',
                value: '0',
                icon: Icons.inventory_2_outlined,
              ),
              const SizedBox(height: 12),
              const _MetricCard(
                label: 'Sales this month',
                value: '₹0',
                icon: Icons.trending_up,
              ),
              const SizedBox(height: 12),
              const _MetricCard(
                label: 'Partner balance',
                value: '₹0',
                icon: Icons.account_balance_wallet_outlined,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.label,
    required this.value,
    required this.icon,
  });
  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon, color: scheme.primary),
            const SizedBox(width: 16),
            Expanded(child: Text(label)),
            Text(value, style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}
