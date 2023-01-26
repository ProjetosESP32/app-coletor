import 'package:app_coletor/components/app_appbars.dart';
import 'package:app_coletor/components/app_buttons.dart';
import 'package:app_coletor/components/app_text.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

// Tela de descrição de itens.
// verificar como fazer o retorno de opçoes pelos radiobuttons
// algum outro tipo de variavel para poder usar

class _DescriptionPageState extends State<DescriptionPage> {
  String? configuracao; // variavel para ser setada no radiobutton
  String? opcao; // variavel de radiobutton
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Descrição dos itens'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CONFIGURAÇÃO',
              style: AppTexts.tittleText,
            ),
            const Divider(),
            const SizedBox(height: 10),
            Column(
              children: [
                RadioListTile(
                    title: Text(
                      'Unitário',
                      style: AppTexts.menuText,
                    ),
                    value: "unitario",
                    groupValue: configuracao,
                    onChanged: (value) {
                      setState(
                        () {
                          configuracao = value.toString();
                        },
                      );
                    }),
                RadioListTile(
                    title: Text(
                      'Quantidade',
                      style: AppTexts.menuText,
                    ),
                    value: "quantidade",
                    groupValue: configuracao,
                    onChanged: (value) {
                      setState(
                        () {
                          configuracao = value.toString();
                        },
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'DESCRIÇÃO',
                  style: AppTexts.tittleText,
                ),
                const Divider(),
                const SizedBox(height: 10),
                RadioListTile(
                  title: Text(
                    'Sim',
                    style: AppTexts.menuText,
                  ),
                  value: 'sim ',
                  groupValue: opcao,
                  onChanged: (value) {
                    setState(() {
                      opcao = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    'Não',
                    style: AppTexts.menuText,
                  ),
                  value: 'nao',
                  groupValue: opcao,
                  onChanged: (value) {
                    setState(() {
                      opcao = value.toString();
                    });
                  },
                )
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                style: AppButtons.positiveButtonStyle,
                child: Text(
                  'Salvar',
                  style: AppTexts.positiveText,
                ))
          ],
        ),
      ),
    );
  }
}
