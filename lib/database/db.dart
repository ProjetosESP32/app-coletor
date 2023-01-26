import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// verificar o funcionamento do database disponibilizado e se sera necessario a criação de um novo
// criar o novo baseado nesse modelo
class DB {
  // construtor com acesso privado
  DB._();
  // criar uma instancia de DB
  static final DB instance = DB._();
  // instancia do SQLite
  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'colector.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_secao);
    await db.execute(_loja);
    await db.execute(_coletores);
    await db.insert('coletor', {'idcoletor': 0});
  }

  // Código SQL, tabelas do banco
  String get _secao => '''
    CREATE TABLE secao (
      id INTEGER PRIMARY KEY AUTOINCREMENT,

    )
  ''';

  String get _loja => '''
    //
    )
  ''';

  String get _coletores => '''
    //
  ''';
}
