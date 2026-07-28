import 'package:flutter/material.dart';
import '../../widgets/app_drawer.dart';

class WarehousesScreen extends StatelessWidget {
  const WarehousesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Warehouses')),
      drawer: const AppDrawer(),
      body: const Center(child: Text('Warehouses Screen')),
    );
  }
}
