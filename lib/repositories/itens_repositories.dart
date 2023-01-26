import 'package:app_coletor/models/itens.dart';
import 'package:flutter/material.dart';

class ItensRepository extends ChangeNotifier {
  static List<Itens> tabela = [
    Itens(
        codigo: '53241',
        descricao: 'balde de plástico',
        preco: 10.00,
        quantidade: 20),
    Itens(
        codigo: '6534',
        descricao: 'mouse logitech',
        preco: 160.75,
        quantidade: 4),
    Itens(
        codigo: '76544',
        descricao: 'monitor mancer',
        preco: 1099.10,
        quantidade: 47),
    Itens(
        codigo: '8765',
        descricao: 'fonte gamemax 750w',
        preco: 330.40,
        quantidade: 2)
  ];
}
