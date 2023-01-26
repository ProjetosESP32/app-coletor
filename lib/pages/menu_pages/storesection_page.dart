import 'package:app_coletor/components/app_appbars.dart';
import 'package:app_coletor/components/app_buttons.dart';
import 'package:app_coletor/components/app_text.dart';
import 'package:flutter/material.dart';

class SectionPage extends StatefulWidget {
  const SectionPage({super.key});

  @override
  State<SectionPage> createState() => _SectionPageState();
}

// pagina de seleção de loja
class _SectionPageState extends State<SectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Seção'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LOJA - SEÇÃO', style: AppTexts.tittleText),
            const Divider(),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Coletor',
                      style: AppTexts.menuText,
                    ),
                  ),
                ),
                Expanded(
                    child: ListTile(
                  subtitle:
                      // Text(
                      //   '"retorno do banco"',
                      //   style: TextStyle(fontSize: 16),
                      // ),
                      TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Loja',
                      style: AppTexts.menuText,
                    ),
                  ),
                ),
                Expanded(
                    child: ListTile(
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
                ))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Seção',
                      style: AppTexts.menuText,
                    ),
                  ),
                ),
                Expanded(
                    child: ListTile(
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
                ))
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                style: AppButtons.positiveButtonStyle,
                child: Text(
                  'Confirmar',
                  style: AppTexts.positiveText,
                ))
          ],
        ),
      ),
    );
  }
}
