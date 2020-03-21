import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

// database table and column names
final String tablePrayers = 'prayers';
final String columnId = '_id';
final String columnText = 'text';

// data model class
class Prayers {
  int id;
  String Text;

  Prayers();

  // convenience constructor to create a prayer object
  Prayers.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    Text = map[columnText];
  }

  // convenience method to create a Map from this prayer object
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{columnText: Text};
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }
}

// database table and column names
final String tableFavorites = 'favorites';
final String columnFavoriteId = '_id';
final String columnFavoriteText = 'text';

// data model class
class Favorites {
  int idFav;
  String favText;

  Favorites();

  // convenience constructor to create a prayer object
  Favorites.fromMap(Map<String, dynamic> map) {
    idFav = map[columnFavoriteId];
    favText = map[columnFavoriteText];
  }

  // convenience method to create a Map from this prayer object
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{columnFavoriteText: favText};
    if (idFav != null) {
      map[columnFavoriteId] = idFav;
    }
    return map;
  }
}

// singleton class to manage the database
class DatabaseHelper {
  // This is the actual database filename that is saved in the docs directory.
  static final _databaseName = "AlnaiemDatabase.db";
  //static final _databaseName = "test.db";
  // Increment this version when you need to change the schema.
  static final _databaseVersion = 1;

  // Make this a singleton class.
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // Only allow a single open connection to the database.
  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  // open the database
  _initDatabase() async {
    // The path_provider plugin gets the right directory for Android or iOS.
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    // Open the database. Can also add an onUpdate callback parameter.
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate, onOpen: _onOpen);
  }

  // SQL string to create the database
  Future _onCreate(Database db, int version) async {
    await db.execute('''
              CREATE TABLE IF NOT EXISTS $tablePrayers (
                $columnId INTEGER PRIMARY KEY,
                $columnText TEXT NOT NULL
              )
              ''');

    await db.execute('''
              CREATE TABLE IF NOT EXISTS $tableFavorites (
                $columnFavoriteId INTEGER PRIMARY KEY,
                $columnFavoriteText TEXT NOT NULL
              )
              ''');
  }

  Future<void> _onOpen(Database db) async {
    await db.execute('''
              CREATE TABLE IF NOT EXISTS $tablePrayers (
                $columnId INTEGER PRIMARY KEY,
                $columnText TEXT NOT NULL
              )
              ''');

    await db.execute('''
              CREATE TABLE IF NOT EXISTS $tableFavorites (
                $columnFavoriteId INTEGER PRIMARY KEY,
                $columnFavoriteText TEXT NOT NULL
              )
              ''');
  }

  // Database helper methods:

  Future<int> insert(Prayers prayer) async {
    Database db = await database;
    int id = await db.insert(tablePrayers, prayer.toMap());
    return id;
  }

  Future<Prayers> queryPrayer(int id) async {
    Database db = await database;
    List<Map> maps = await db.query(tablePrayers,
        columns: [columnId, columnText],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return Prayers.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    Database db = await database;
    return await db.delete("prayers", where: "_id = ?", whereArgs: [id]);
  }

  Future<List<Prayers>> queryAllPrayers() async {
    Database db = await database;
    // get all rows
    List<Map> result = await db.query(tablePrayers);
    List<Prayers> list = result.isNotEmpty
        ? result.map((c) => Prayers.fromMap(c)).toList()
        : null;
    return list;
  }

  Future<int> getNumberOfPrayers() async {
    Database db = await database;
    int count = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM prayers'));
    return count;
  }

  //========================================================

  Future<int> insertFav(Favorites favorite) async {
    Database db = await database;
    int id = await db.insert(tableFavorites, favorite.toMap());
    return id;
  }

  Future<Favorites> queryFav(int id) async {
    Database db = await database;
    List<Map> maps = await db.query(tableFavorites,
        columns: [columnFavoriteId, columnFavoriteText],
        where: '$columnFavoriteId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return Favorites.fromMap(maps.first);
    }
    return null;
  }

  Future<int> deleteFav(int id) async {
    Database db = await database;
    return await db.delete(tableFavorites,
        where: "$columnFavoriteId = ?", whereArgs: [id]);
  }

  Future<List<Favorites>> queryAllFav() async {
    Database db = await database;
    // get all rows
    List<Map> result = await db.query(tableFavorites);
    List<Favorites> list = result.isNotEmpty
        ? result.map((c) => Favorites.fromMap(c)).toList()
        : null;
    return list;
  }

  Future<int> getNumberOfFav() async {
    Database db = await database;
    int count = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $tableFavorites'));
    return count;
  }
}
