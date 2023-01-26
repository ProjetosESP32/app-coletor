import 'package:app_coletor/components/app_appbars.dart';
import 'package:app_coletor/components/app_buttons.dart';
import 'package:app_coletor/components/app_text.dart';
import 'package:flutter/material.dart';

class ErasePage extends StatefulWidget {
  const ErasePage({super.key});

  @override
  State<ErasePage> createState() => _ErasePageState();
}

// Tela de exclusão de dados. exclusão parcial ou total
//
class _ErasePageState extends State<ErasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Apagar seção'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                'Seção a ser excluida',
                style: AppTexts.tittleText,
              ),
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 38,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: AppButtons.positiveButtonStyle,
                    child: Text('Excluir Selecionado',
                        style: AppTexts.positiveText,
                        textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: 38,
                  width: 100,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: AppButtons.negativeButtonStyle,
                    child: Text('Cancelar', style: AppTexts.negativeText),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Divider(),
            Text('ou', style: AppTexts.menuText),
            const Divider(),
            const SizedBox(height: 30),
            Text(
              'Apagar Todos os Dados',
              style: AppTexts.tittleText,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                  width: MediaQuery.of(context).size.width * .9,
                  child: Expanded(
                      child: ElevatedButton(
                    onPressed: () {},
                    style: AppButtons.eraseAllButtonStyle,
                    child: Text('Apagar Tudo', style: AppTexts.negativeText),
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
