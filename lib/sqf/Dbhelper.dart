import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


import 'product.dart';

/// Handles all database work (create DB, create table, CRUD).
/// Uses the singleton pattern so only one connection is opened.
class DatabaseHelper {
  DatabaseHelper._internal();
  static final DatabaseHelper instance = DatabaseHelper._internal();

  static const String _dbName = 'products.db';
  static const int _dbVersion = 1;
  static const String table = 'products';

  Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), _dbName);
    return openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        price REAL NOT NULL,
        quantity INTEGER NOT NULL
      )
    ''');
  }

  // ---------- CREATE ----------
  Future<int> insertProduct(Product product) async {
    final db = await database;
    return db.insert(table, product.toMap()..remove('id'));
  }

  // ---------- READ ----------
  Future<List<Product>> getProducts() async {
    final db = await database;
    final rows = await db.query(table, orderBy: 'id DESC');
    return rows.map((row) => Product.fromMap(row)).toList();
  }

  // ---------- UPDATE ----------
  Future<int> updateProduct(Product product) async {
    final db = await database;
    return db.update(
      table,
      product.toMap(),
      where: 'id = ?',
      whereArgs: [product.id],
    );
  }

  // ---------- DELETE ----------
  Future<int> deleteProduct(int id) async {
    final db = await database;
    return db.delete(table, where: 'id = ?', whereArgs: [id]);
  }
}
