import 'package:app_coletor/components/app_appbars.dart';
import 'package:app_coletor/components/app_buttons.dart';
import 'package:app_coletor/components/app_text.dart';
import 'package:flutter/material.dart';

class AuditPage extends StatefulWidget {
  const AuditPage({super.key});

  @override
  State<AuditPage> createState() => _AuditPageState();
}

// Tela de auditoria, realiza leitura manual ou por meio do lases
//
class _AuditPageState extends State<AuditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbaritem('Auditoria'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                  title: Text('Código:', style: AppTexts.tittleText),
                  subtitle: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  )),
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
              const SizedBox(height: 22),
              ListTile(
                title: Text(
                  'Espaço para Retorno de dados do database: \ndescriçao, preço',
                  style: AppTexts.databaseDemoText,
                ),
              )
            ],
          ),
        ));
  }
}
