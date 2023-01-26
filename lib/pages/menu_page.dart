import 'package:app_coletor/components/app_buttons.dart';
import 'package:app_coletor/components/app_colors.dart';
import 'package:app_coletor/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

// --------------------------------
// Planejamento de etapas: implementar gerenciamento de estado, utilizar provider e change notifier
// implentar banco de dados local em sqlite para verificar funcionamento das funções.
//  -------------------------------
// Página de menu principal do app
class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coletor'),
        backgroundColor: AppColors.appbar,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('MENU PRINCIPAL', style: AppTexts.tittleText),
              const Divider(),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Section');
                  },
                  style: AppButtons.menuButtonStyle,
                  child: Text(
                    'LOJA',
                    style: AppTexts.buttonsText,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Description');
                    },
                    style: AppButtons.menuButtonStyle,
                    child: Text(
                      'QTDE/DESCR',
                      style: AppTexts.buttonsText,
                    )),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Inventory');
                    },
                    style: AppButtons.menuButtonStyle,
                    child: Text(
                      'INVENTÁRIO',
                      style: AppTexts.buttonsText,
                    )),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Erase');
                    },
                    style: AppButtons.menuButtonStyle,
                    child: Text(
                      'APAGAR',
                      style: AppTexts.buttonsText,
                    )),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Search');
                    },
                    style: AppButtons.menuButtonStyle,
                    child: Text(
                      'CONSULTAR SELEÇÃO',
                      style: AppTexts.buttonsText,
                    )),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Audit');
                    },
                    style: AppButtons.menuButtonStyle,
                    child: Text(
                      'AUDITORIA',
                      style: AppTexts.buttonsText,
                    )),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    style: AppButtons.exitbuttonstyle,
                    child: Text(
                      'SAIR',
                      style: AppTexts.buttonsText,
                    )),
              ),
              const SizedBox(height: 30),
              const Text(
                'by IFMT',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
