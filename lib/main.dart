import 'package:app_coletor/pages/menu_page.dart';
import 'package:app_coletor/pages/menu_pages/audit_page.dart';
import 'package:app_coletor/pages/menu_pages/description_page.dart';
import 'package:app_coletor/pages/menu_pages/erase_page.dart';
import 'package:app_coletor/pages/menu_pages/inventory_page.dart';
import 'package:app_coletor/pages/menu_pages/searchsection_page.dart';
import 'package:app_coletor/pages/menu_pages/storesection_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collector',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/Menu',
      routes: {
        // As rotas são acessadas através de 'codinomes' estipulados
        '/Menu': (context) => const MenuPage(),
        '/Section': (context) => const SectionPage(),
        '/Inventory': (context) => const InventoryPage(),
        '/Erase': (context) => const ErasePage(),
        '/Description': (context) => const DescriptionPage(),
        '/Audit': (context) => const AuditPage(),
        '/Search': (context) => const SearchSelectionPage()
      },
    );
  }
}
