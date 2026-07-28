import 'package:flutter/material.dart';
import '../core/routes/route_names.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('Phoenix', style: TextStyle(fontSize: 24)),
          ),
          ListTile(
            leading: const Icon(Icons.inventory),
            title: const Text('Warehouses'),
            onTap: () {
              Navigator.pushReplacementNamed(context, RouteNames.warehouses);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, RouteNames.products);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
            onTap: () {
              Navigator.pushReplacementNamed(context, RouteNames.cart);
            },
          ),
        ],
      ),
    );
  }
}
