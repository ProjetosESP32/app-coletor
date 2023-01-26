import 'package:app_coletor/components/app_appbars.dart';
import 'package:app_coletor/components/app_buttons.dart';
import 'package:app_coletor/components/app_text.dart';
import 'package:flutter/material.dart';

class SearchSelectionPage extends StatefulWidget {
  const SearchSelectionPage({super.key});

  @override
  State<SearchSelectionPage> createState() => _SearchSelectionPageState();
}

// tela de consulta de seção
class _SearchSelectionPageState extends State<SearchSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Consultar seção'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Seção', style: AppTexts.tittleText),
              subtitle: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: AppButtons.positiveButtonStyle,
                    child: Text(
                      'Consultar',
                      style: AppTexts.positiveText,
                    )),
                OutlinedButton(
                    onPressed: () {},
                    style: AppButtons.negativeButtonStyle,
                    child: Text(
                      'Cancelar',
                      style: AppTexts.negativeText,
                    ))
              ],
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text('Código:', style: AppTexts.tittleText),
              subtitle: Text(
                '"codigo do produto, database"\n"descrição do item""',
                style: AppTexts.databaseDemoText,
              ),
            ),
            const SizedBox(height: 38),
            Row(
              children: [
                Text(
                  'Seção "x":',
                  style: AppTexts.tittleText,
                ),
                Text(
                  '\t database',
                  style: AppTexts.databaseDemoText,
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Text(
                  'Total Geral:',
                  style: AppTexts.tittleText,
                ),
                Text(
                  '\t database',
                  style: AppTexts.databaseDemoText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
