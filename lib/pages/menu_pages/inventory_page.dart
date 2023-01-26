import 'package:app_coletor/components/app_appbars.dart';
import 'package:app_coletor/components/app_text.dart';
import 'package:flutter/material.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key});

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

// Tela de inventario
// fazer o vinculo com o banco de dados para alimentar os retornos da tela
class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Inventário'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Código', style: AppTexts.tittleText),
              subtitle: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text(
                'Descrição',
                style: AppTexts.tittleText,
              ),
              subtitle: Text(
                '"texto de marcação para retorno do database"',
                style: AppTexts.databaseDemoText,
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                      title: Text('Quantidade', style: AppTexts.tittleText),
                      subtitle: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: ListTile(
                    title: Center(
                        child: Text('Total', style: AppTexts.tittleText)),
                    subtitle: Text(
                      '"Qtd database"',
                      style: AppTexts.databaseDemoText,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
