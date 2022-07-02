import 'dart:async';
import 'dart:convert';
import 'dart:io'; //from the link
import 'package:flutter/cupertino.dart';
//import 'package:myapp/db/models/arts_score.dart';
// import 'package:myapp/Screens/Admin/academics/workshops/utils_from_github.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';
import 'package:myapp/db/models/webinars.dart';
//import 'package:myapp/db/models/workshop.dart';
//import 'package:myapp/saving%20photo/admin%20webinars/admin_webinars_photo.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// import '../Screens/Admin/academics/webinars/admin_webinars_stackoverflow.dart';
import 'package:myapp/db/models/brototype_arts_score.dart';
import 'package:myapp/db/models/webinars.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  // Singleton pattern
  static final DatabaseService _databaseService = DatabaseService._internal();
  factory DatabaseService() => _databaseService;
  DatabaseService._internal();

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    // Initialize the DB first time it is accessed
    _database = await _initDatabase();
    return _database!;
  }

//this  line is added due to the errors
  // get idWebinar => null;

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();

    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    final path = join(databasePath, 'acteo.db');

    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    return await openDatabase(
      path,
      onCreate: _onCreate,
      version: 1,
      // onConfigure: (db) async => await db.execute('PRAGMA foreign_keys = ON'),
    );
  }

  // When the database is first created, create a table to store breeds
  // and a table to store dogs.
  static void _onCreate(Database db, int version) {
    //Future<void> _onCreate(Database db, int version) async {
    // Run the CREATE {breeds} TABLE statement on the database.
    //await
    db.execute('''
      CREATE TABLE teamscore(id INTEGER PRIMARY KEY, name TEXT, score TEXT)
    // ''');
    // Run the CREATE {dogs} TABLE statement on the database.
    //await
    db.execute(
        '''CREATE TABLE IF NOT EXISTS webinarsdetailtable (id INTEGER PRIMARY KEY, eventName TEXT, orgName TEXT, description TEXT)''');
  }

  // Define a function that inserts breeds into the database
  Future<void> addScore(StudentModel tmscore) async {
    // Get a reference to the database.
    final db = await _databaseService.database;

    // Insert the Breed into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same breed is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      'teamscore',
      tmscore.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> addWebinarDetails(WebinarsDetailsModel wbDetail) async {
    final db = await _databaseService.database;
    await db.insert(
      'webinarsdetailtable',
      wbDetail.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // A method that retrieves all the breeds from the breeds table.
  Future<List<StudentModel>> teamscore() async {
    // Get a reference to the database.
    final db = await _databaseService.database;

    // Query the table for all the Breeds.
    final List<Map<String, dynamic>> maps = await db.query('teamscore');

    // Convert the List<Map<String, dynamic> into a List<Breed>.
    return List.generate(
        maps.length, (index) => StudentModel.fromMap(maps[index]));
  }

  Future<StudentModel> tmscore(int id) async {
    final db = await _databaseService.database;
    final List<Map<String, dynamic>> maps =
        await db.query('teamscore', where: 'id = ?', whereArgs: [id]);
    return StudentModel.fromMap(maps[0]);
  }

  Future<List<WebinarsDetailsModel>> webinarsdetailtable() async {
    final db = await _databaseService.database;
    final List<Map<String, dynamic>> maps =
        await db.query('webinarsdetailtable');
    return List.generate(
        maps.length, (index) => WebinarsDetailsModel.fromMap(maps[index]));
  }

  Future<WebinarsDetailsModel> wbDetail(int id) async {
    final db = await _databaseService.database;
    final List<Map<String, dynamic>> maps =
        await db.query('webinarsdetailtable', where: 'id = ?', whereArgs: [id]);
    return WebinarsDetailsModel.fromMap(maps[0]);
  }

  // A method that updates a breed data from the breeds table.
  Future<void> updateScore(StudentModel tmscore) async {
    // Get a reference to the database.
    final db = await _databaseService.database;

    // Update the given breed
    await db.update(
      'teamscore',
      tmscore.toMap(),
      // Ensure that the Breed has a matching id.
      where: 'id = ?',
      // Pass the Breed's id as a whereArg to prevent SQL injection.
      whereArgs: [tmscore.id],
    );
  }

  Future<void> updateWebinarDetails(WebinarsDetailsModel wbDetail) async {
    final db = await _databaseService.database;
    await db.update('webinarsdetailtable', wbDetail.toMap(),
        where: 'id = ?', whereArgs: [wbDetail.id]);
  }

  // A method that deletes a breed data from the breeds table.
  Future<void> deleteScore(int id) async {
    // Get a reference to the database.
    final db = await _databaseService.database;

    // Remove the Breed from the database.
    await db.delete(
      'teamscore',
      // Use a `where` clause to delete a specific breed.
      where: 'id = ?',
      // Pass the Breed's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  Future<void> deleteWebinarDetails(int id) async {
    final db = await _databaseService.database;
    await db.delete('webinarsdetailtable', where: 'id = ?', whereArgs: [id]);
  }
}

//await _Database.close();





































// ValueNotifier<List<WebinarsDetailsModel>> webinarDetailsNotifier =
//     ValueNotifier([]);
// ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);
// late Database _db;

// Future<void> initializedDatabase() async {
//   _db = await openDatabase(
//     'acteo.db',
//     version: 1,
//     onCreate: (Database db, int version) async {
//       await db.execute(
//           'CREATE TABLE webinarsdetailtable (id integer primary key autoincrement, eventName text not null, orgName text not null, description text not null )');

//       print('table created for the webinardetails');
//       db.execute(
//           //   '''CREATE TABLE teamscore
//           //   ( id integer primary key autoincrement,
//           //   name text, score text,
//           //   eventName text, orgName text, description text);
//           //  ''');

//           'CREATE TABLE teamscore (id INTEGER PRIMARY KEY, name TEXT, score TEXT)');
//       // db.execute(
//       // 'CREATE TABLE webinarsdetailtable (idWebinar INTEGER PRIMARY KEY, eventName TEXT, orgName TEXT, Description TEXT)');
//     },
//   );
// }

// Future<void> addWebinarDetails(WebinarsDetailsModel value) async {
//   // print('inside the addings 1st print');
//   // var value = await _db.query('sqlite_master',
//   //     where: 'eventName = ?', whereArgs: ['webinarsdetailtable']);
//   // print(value);
//   await _db.rawInsert(
//       'INSERT INTO webinarsdetailtable (eventName, orgName, description) VALUES (?, ?, ?)',
//       [value.eventName, value.orgName, value.description]);
// //value.description]);
// //'INSERT INTO webinarsdetailtable (eventName, orgName, Description) VALUES (?, ?, ?)',
// //[value.eventName, value.orgName, value.Description]);
//   //print('inside the addings 2nd print');
//   getWebinarDetails();
//   // studentListNotifier.value.add(value);
//   // studentListNotifier.notifyListeners();
// }

// Future<void> getWebinarDetails() async {
//   final _value = await _db.rawQuery('SELECT * FROM webinarsdetailtable');
//   print(_value);
//   print('the values are read');
//   webinarDetailsNotifier.value.clear();
//   _value.forEach(
//     (map) {
//       final eventName = WebinarsDetailsModel.fromMap(map);
//       webinarDetailsNotifier.value.add(eventName);
//       webinarDetailsNotifier.notifyListeners();
//     },
//   );
// }

// Future<void> deleteWebinarDetails(int idWebinar) async {
//   // var count =
//   await _db.rawDelete(
//       'DELETE FROM webinarsdetailtable WHERE idWebinar = ?', [idWebinar]);
//   getWebinarDetails();
// }

// Future<void> addScore(StudentModel value) async {
//   print('inside the score add class');
//   await _db.rawInsert(
//       'INSERT INTO teamscore (name, score, eventName, orgName, description) VALUES (?,?,?,?,?)',
//       [
//         value.name,
//         value.score,
//         // value.eventName,
//         // value.orgName,
//         // value.description
//       ]);
//   print('inside the score and the table is created');
//   getAllScore();

//   // studentListNotifier.value.add(value);
//   // studentListNotifier.notifyListeners();
// }

// Future<void> getAllScore() async {
//   final _values = await _db.rawQuery('SELECT * FROM teamscore');
//   print(_values);
//   studentListNotifier.value.clear();
//   var result = await _db
//       .query('sqlite_master', where: 'name = ?', whereArgs: ['teamscore']);
//   print(result);
//   _values.forEach((map) {
//     final score = StudentModel.fromMap(map);
//     studentListNotifier.value.add(score);
//     studentListNotifier.notifyListeners();
//   });
// }

// Future<void> deleteScore(int id) async {
//   await _db.rawDelete('DELETE FROM teamscore WHERE id = ?', [id]);
//   getAllScore();
// }

// Future<void> initializedDatabase() async {
//   _db = await openDatabase(
//     'acteo.db',
//     version: 1,
//     onCreate: (Database db, int version) async {
//       await db.execute(
//           'create table webinarsdetailtable (id integer primary key autoincrement, eventName text not null, orgName text not null , Description text not null');
//       await db.execute(
//           'create table teamscore ( id integer primary key autoincrement, name text not null, score text not null)');
//       //     'CREATE TABLE teamscore (id INTEGER PRIMARY KEY, name TEXT, score TEXT)');
//       // db.execute(
//       //     'CREATE TABLE webinarsdetailtable (id INTEGER PRIMARY KEY, eventName TEXT, orgName TEXT, Description TEXT)');
//     },
//   );
// }

////CHECK HERE
// Future<void> addWebinarDetails(WebinarsDetailsModel value) async {
//   print('inside the addings 1st print');
//   await _db.rawInsert(
//       // 'INSERT INTO teamscore (name, score) VALUES (?,?)',
//       //   [value.eventName, value.orgName, value.description]);
//       'INSERT INTO webinarsdetailtable (eventName, orgName, Description) VALUES (?, ?, ?)',
//       [value.eventName, value.orgName, value.description]);
//   print('inside the addings 2nd print');
//   getWebinarDetails();
//   // studentListNotifier.value.add(value);
//   // studentListNotifier.notifyListeners();
// }

// Future<void> getWebinarDetails() async {
//   final _value = await _db.rawQuery('SELECT * FROM webinarsdetailtable');
//   print(_value);
//   WebinarDetailsNotifier.value.clear();

//   _value.forEach(
//     (map) {
//       final Description = WebinarsDetailsModel.fromMap(map);
//       WebinarDetailsNotifier.value.add(Description);
//       WebinarDetailsNotifier.notifyListeners();
//     },
//   );
// }

// Future<void> deleteWebinarDetails(int id) async {
//   // var count =
//   await _db.rawDelete('DELETE FROM webinarsdetailtable WHERE id = ?', [id]);
//   getWebinarDetails();
// }






// Future<void> addScore(StudentModel value) async {
//   await _db.rawInsert('INSERT INTO teamscore (name, score) VALUES (?,?)',
//       [value.name, value.score]);
//   getAllScore();
//   // studentListNotifier.value.add(value);
//   // studentListNotifier.notifyListeners();
// }

// Future<void> getAllScore() async {
//   final _values = await _db.rawQuery('SELECT * FROM teamscore');
//   print(_values);
//   studentListNotifier.value.clear();

//   _values.forEach((map) {
//     final score = StudentModel.fromMap(map);
//     studentListNotifier.value.add(score);
//     studentListNotifier.notifyListeners();
//   });
// }

// Future<void> deleteScore(int id) async {
//   await _db.rawDelete('DELETE FROM teamscore WHERE id = ?', [id]);
//   getAllScore();
// }

//the webinars db helper
// Future<void> initializedDatabaseWebinars() async {
//   _db = await openDatabase(
//     'acteoWebinar.db',
//     version: 1,
//     onCreate: (Database dbwebinars, int version) async {

//     },
//   );
// }

//the sqflite example

// final String tableTodo = 'todo';
// final String columnId = '_id';
// final String columnTitle = 'title';
// final String columnDone = 'done';

// class Todo {
//   int id;
//   String title;
//   bool done;

//   Map<String, Object?> toMap() {
//     var map = <String, Object?>{
//       columnTitle: title,
//       columnDone: done == true ? 1 : 0
//     };
//     if (id != null) {
//       map[columnId] = id;
//     }
//     return map;
//   }

// Todo();

//   Todo.fromMap(Map<String, Object?> map) {
//     id = map[columnId];
//     title = map[columnTitle];
//     done = map[columnDone] == 1;
//   }
// }

// class TodoProvider {
//   Database db;

//   Future open(String path) async {
//     db = await openDatabase(path, version: 1,
//         onCreate: (Database db, int version) async {
//       await db.execute('''
// create table $tableTodo (
//   $columnId integer primary key autoincrement,
//   $columnTitle text not null,
//   $columnDone integer not null)
// ''');
//     });
//   }

//   Future<Todo> insert(Todo todo) async {
//     todo.id = await db.insert(tableTodo, todo.toMap());
//     return todo;
//   }

//   Future<Todo> getTodo(int id) async {
//     List<Map> maps = await db.query(tableTodo,
//         columns: [columnId, columnDone, columnTitle],
//         where: '$columnId = ?',
//         whereArgs: [id]);
//     if (maps.length > 0) {
//       return Todo.fromMap(maps.first);
//     }
//     return null;
//   }

//   Future<int> delete(int id) async {
//     return await db.delete(tableTodo, where: '$columnId = ?', whereArgs: [id]);
//   }

//   Future<int> update(Todo todo) async {
//     return await db.update(tableTodo, todo.toMap(),
//         where: '$columnId = ?', whereArgs: [todo.id]);
//   }

//   Future close() async => db.close();
// }
