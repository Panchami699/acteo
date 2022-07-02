// // import 'package:flutter_sqflite_example/models/breed.dart';
// // import 'package:flutter_sqflite_example/models/dog.dart';
// // import 'package:demo/models/breed.dart';
// // import 'package:demo/models/dog.dart';
// import 'package:myapp/db/models/brototype_arts_score.dart';
// import 'package:myapp/db/models/webinars.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseService {
//   // Singleton pattern
//   static final DatabaseService _databaseService = DatabaseService._internal();
//   factory DatabaseService() => _databaseService;
//   DatabaseService._internal();

//   static Database? _database;
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     // Initialize the DB first time it is accessed
//     _database = await _initDatabase();
//     return _database!;
//   }

//   get idWebinar => null;

//   Future<Database> _initDatabase() async {
//     final databasePath = await getDatabasesPath();

//     // Set the path to the database. Note: Using the `join` function from the
//     // `path` package is best practice to ensure the path is correctly
//     // constructed for each platform.
//     final path = join(databasePath, 'acteo.db');

//     // Set the version. This executes the onCreate function and provides a
//     // path to perform database upgrades and downgrades.
//     return await openDatabase(
//       path,
//       onCreate: _onCreate,
//       version: 1,
//       onConfigure: (db) async => await db.execute('PRAGMA foreign_keys = ON'),
//     );
//   }

//   // When the database is first created, create a table to store breeds
//   // and a table to store dogs.
//   Future<void> _onCreate(Database db, int version) async {
//     // Run the CREATE {breeds} TABLE statement on the database.
//     await db.execute(
//       'CREATE TABLE teamscore(id INTEGER PRIMARY KEY, name TEXT, description TEXT)',
//     );
//     // Run the CREATE {dogs} TABLE statement on the database.
//     await db.execute(
//       'CREATE TABLE webinarsdetailtable (idWebinar INTEGER PRIMARY KEY, eventName TEXT, orgName TEXT, description TEXT)',
//     );
//   }

//   // Define a function that inserts breeds into the database
//   Future<void> addScore(StudentModel value) async {
//     // Get a reference to the database.
//     final db = await _databaseService.database;

//     // Insert the Breed into the correct table. You might also specify the
//     // `conflictAlgorithm` to use in case the same breed is inserted twice.
//     //
//     // In this case, replace any previous data.
//     await db.insert(
//       'teamscore',
//       value.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   Future<void> addWebinarDetails(WebinarsDetailsModel wbDetail) async {
//     final db = await _databaseService.database;
//     await db.insert(
//       'webinarsdetailtable',
//       wbDetail.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   // A method that retrieves all the breeds from the breeds table.
//   Future<List<StudentModel>> teamscore() async {
//     // Get a reference to the database.
//     final db = await _databaseService.database;

//     // Query the table for all the Breeds.
//     final List<Map<String, dynamic>> maps = await db.query('teamscore');

//     // Convert the List<Map<String, dynamic> into a List<Breed>.
//     return List.generate(
//         maps.length, (index) => StudentModel.fromMap(maps[index]));
//   }

//   Future<StudentModel> value(int id) async {
//     final db = await _databaseService.database;
//     final List<Map<String, dynamic>> maps =
//         await db.query('teamscore', where: 'id = ?', whereArgs: [id]);
//     return StudentModel.fromMap(maps[0]);
//   }

//   Future<List<WebinarsDetailsModel>> wbDetail() async {
//     final db = await _databaseService.database;
//     final List<Map<String, dynamic>> maps = await db.query(
//         'webinarsdetailtable',
//         where: 'idWebinar = ?',
//         whereArgs: [idWebinar]);
//     return List.generate(
//         maps.length, (index) => WebinarsDetailsModel.fromMap(maps[index]));
//   }

//   // A method that updates a breed data from the breeds table.
//   Future<void> updateScore(StudentModel value) async {
//     // Get a reference to the database.
//     final db = await _databaseService.database;

//     // Update the given breed
//     await db.update(
//       'teamscore',
//       value.toMap(),
//       // Ensure that the Breed has a matching id.
//       where: 'id = ?',
//       // Pass the Breed's id as a whereArg to prevent SQL injection.
//       whereArgs: [value.id],
//     );
//   }

//   Future<void> updateWebinarDetails(WebinarsDetailsModel wbDetail) async {
//     final db = await _databaseService.database;
//     await db.update('webinarsdetailtable', wbDetail.toMap(),
//         where: 'idWebinar = ?', whereArgs: [wbDetail.idWebinar]);
//   }

//   // A method that deletes a breed data from the breeds table.
//   Future<void> deleteScore(int id) async {
//     // Get a reference to the database.
//     final db = await _databaseService.database;

//     // Remove the Breed from the database.
//     await db.delete(
//       'teamscore',
//       // Use a `where` clause to delete a specific breed.
//       where: 'id = ?',
//       // Pass the Breed's id as a whereArg to prevent SQL injection.
//       whereArgs: [id],
//     );
//   }

//   Future<void> deleteWebinarDetails(int id) async {
//     final db = await _databaseService.database;
//     await db.delete('webinarsdetailtable',
//         where: 'idWebinar = ?', whereArgs: [idWebinar]);
//   }
// }

















































// // import 'dart:async';
// // import 'dart:convert';
// // import 'package:myapp/db/arts_score.dart';
// // import 'package:sqflite/sqflite.dart';
// // import 'package:path/path.dart';

// // import 'models/arts_score.dart';
// // import 'models/semester_exam.dart';

// // class DatabaseHelper {
// //   static final DatabaseHelper instance = DatabaseHelper._init();

// //   static Database? _database;

// //   DatabaseHelper._init();

// //   Future<Database> get database async {
// //     if (_database != null) {
// //       return _database!;
// //     } else {
// //       _database = await _initDb('acteo.db'); //CHange databse name to applicaton
// //       return _database!;
// //     }
// //   }

// // //initializing the database
// //   Future<Database> _initDb(String filePath) async {
// //     final dbPath = await getDatabasesPath();
// //     final path = join(dbPath, filePath);

// //     print("db location is : " + dbPath);
// //     return await openDatabase(path, version: 1, onCreate: _createDB);
// //   }

// //   Future _createDB(Database db, int version) async {
// //     final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
// //     final integerType = 'INTEGER NOT NULL';
// //     final textType = 'TEXT NOT NULL';
// //     await db.execute('''
// // CREATE TABLE $tablescore (
// //   ${artsFields.id} $idType,
// //   ${artsFields.team} $textType,
// //   ${artsFields.score} $integerType
// // )
// // ''');
// //   }

// //   Future<arts_score> create(arts_score arts) async {
// //     final db = await instance.database;
// //     final id = await db.insert(tablescore, arts.toJson());

// //     // final json = arts_score.toJson;
// //     // final columns = '${artsFields.team},${artsFields.score}';
// //     // final values = '${json[artsFields.team]}, ${json[artsFields.score]}';
// //     // final id = await db
// //     //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');

// //     print(id);
// //     print("calling the read function");
// //     readAllScore();
// //     print("the length of the demo is ");
// //     // print(demo.length);
// //     read(id);
// //     return arts.copy(id: id);
// //   }

// //   Future<arts_score?> read(int id) async {
// //     final db = await instance.database;
// //     final maps = await db.query(
// //       tablescore,
// //       columns: artsFields.values,
// //       where: '${artsFields.id} = ?',
// //       whereArgs: [id],
// //     );
// //     print('inside the readall');
// //     // print("Elements from the table is found");
// //     if (maps.isNotEmpty) {
// //       print("maps is not empty. ");
// //       return arts_score.fromJson(maps.first);
// //     } else {
// //       return null;
// //     }
// //   }

// //   Future<List<arts_score>> readAllScore() async {
// //     print("inside read all ");
// //     final db = await instance.database;
// //     final orderBy = '${artsFields.score} ASC';
// //     // final result = await db.rawQuery('SELECT * FROM $tablescore ORDER BY $orderBy');
// //     final result = await db.query(tablescore, orderBy: orderBy);
// //     print("the e is ");
// //     result.map((e) => newjosn(e));
// //     return result.map((json) => arts_score.fromJson(json)).toList();
// //   }

// //   newjosn(Map<String, Object?> e) {
// //     print("the length ");
// //     print(e.length);
// //     print(e.values);
// //   }

// // //closing the database
// //   Future close() async {
// //     final db = await instance.database;

// //     db.close();
// //   }
// // }


















































// // class DbManager {
// //   late Database _database;

// //   Future openDb() async {
// //     _database = await openDatabase(join(await getDatabasesPath(), "ss.db"),
// //         version: 1, onCreate: (Database db, int version) async {
// //       await db.execute(
// //         "CREATE TABLE model(id INTEGER PRIMARY KEY autoincrement, fruitName TEXT, quantity TEXT)",
// //       );
// //     });
// //     return _database;
// //   }

// //   Future insertModel(Model model) async {
// //     await openDb();
// //     return await _database.insert('model', model.toJson());
// //   }

// //   Future<List<Model>> getModelList() async {
// //     await openDb();
// //     final List<Map<String, dynamic>> maps = await _database.query('model');

// //     return List.generate(maps.length, (i) {
// //       return Model(
// //           id: maps[i]['id'],
// //           fruitName: maps[i]['fruitName'],
// //           quantity: maps[i]['quantity']);
// //     });
// //     // return maps
// //     //     .map((e) => Model(
// //     //         id: e["id"], fruitName: e["fruitName"], quantity: e["quantity"]))
// //     //     .toList();
// //   }

// //   Future<int> updateModel(Model model) async {
// //     await openDb();
// //     return await _database.update('model', model.toJson(),
// //         where: "id = ?", whereArgs: [model.id]);
// //   }

// //   Future<void> deleteModel(Model model) async {
// //     await openDb();
// //     await _database.delete('model', where: "id = ?", whereArgs: [model.id]);
// //   }
// // }











// //for the workshop from the github

// // class Helper {
// //   static final Helper _instance = new Helper.internal();
// //   factory Helper() => _instance;

// //   late Database _db;

// //   Future<Database> get db async {
// //     if(_db != null)
// //       return _db;
// //     _db = await initDb();
// //     return _db;
// //   }

// //   initDb() async {
// //     io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
// //     String path = join(documentsDirectory.path, "main.db");
// //     var theDb = await openDatabase(path, version: 1, onCreate: (Database db, int version) async {
// //       await db.execute('''
// //           create table $tableUser ( 
// //           $columnId integer primary key autoincrement, 
// //           $columnName text not null,
// //           $columnPhone text not null,
// //           $columnEmail email not null)
// //           ''');
// //     });
// //     return theDb;
// //   }


// //   Helper.internal();

// //   Future<User> insert(User user) async {
// //     var dbClient = await db;
// //     user.id = await dbClient.insert(tableUser, user.toMap());
// //     return user;
// //   }

// //   Future<User?> getUser(int id) async {
// //     var dbClient = await db;
// //     List<Map> maps = await dbClient.query(tableUser,
// //         columns: [columnId, columnName, columnPhone, columnEmail],
// //         where: '$columnId = ?',
// //         whereArgs: [id]);
// //     if (maps.length > 0) {
// //       return User.fromMap(maps.first);
// //     }
// //     return null;
// //   }

// //   Future<int> delete(int id) async {
// //     var dbClient = await db;
// //     return await dbClient.delete(tableUser, where: '$columnId = ?', whereArgs: [id]);
// //   }

// //   Future<int> update(User user) async {
// //     var dbClient = await db;
// //     return await dbClient.update(tableUser, user.toMap(),
// //         where: '$columnId = ?', whereArgs: [user.id]);
// //   }

// //  Future<List> getAllUsers() async {
// //     List<User> user = List();
// //     var dbClient = await db;
// //     List<Map> maps = await dbClient.query(tableUser,
// //         columns: [columnId, columnName, columnPhone, columnEmail]);
// //     if (maps.length > 0) {
// //       maps.forEach((f) {
// //         user.add(User.fromMap(f));
// // //          print("getAllUsers"+ User.fromMap(f).toString());
// //       });
// //     }
// //     return user;
// //   }

// //   Future close() async {
// //     var dbClient = await db;
// //     dbClient.close();
// //   }
// // }



// // class PictureDBHelper {
// //   late Database _db;
// //   static const String ID = 'id';
// //   static const String NAME = 'title';
// //   static const String TABLE = 'PhotosTable';
// //   static const String DB_NAME = 'photos.db';

// //   Future<Database> get db async {
// //     if (null != _db) {
// //       return _db;
// //     }
// //     _db = await initDb();
// //     return _db;
// //   }

// //   initDb() async {
// //      var documentsDirectory = await getApplicationDocumentsDirectory();
// //     String path = join(documentsDirectory.path, DB_NAME);
// //     var db = await openDatabase(path, version: 1, onCreate: _onCreate);
// //     return db;
// //   }

// //   _onCreate(Database db, int version) async {
// //     await db.execute("CREATE TABLE Picture(id INTEGER PRIMARY KEY, title TEXT, picture BLOB )");
// //     // await db.execute('CREATE TABLE $TABLE ($ID INTEGER, $NAME TEXT)');
// //   }

// // //   Future<AdminWebinarsPhoto> save(AdminWebinarsPhoto photo) async {
// // //     var dbClient = await db;
// // //     photo.id = await dbClient.insert(TABLE, photo.toMap());
// // //     return photo;
// // //   }

// // void savePicture(Picture picture) async {
// //   var dbClient = await db;
// //   await dbClient.insert("Picture", picture.toMap());
// // }


// // //   Future<List<AdminWebinarsPhoto>> getPhotos() async {
// // //     var dbClient = await db;
// // //     List<Map> maps = await dbClient.query(TABLE, columns: [ID, NAME]);
// // //     List<AdminWebinarsPhoto> photos = [];
// // //     if (maps.length > 0) {
// // //       for (int i = 0; i < maps.length; i++) {
// // //         photos.add(AdminWebinarsPhoto.fromMap(maps[i]));
// // //       }
// // //     }
// // //     return photos;
// // //   }

// // Future<List<Picture>> getPictures() async {
// //     var dbClient = await db;
// //     List<Map> list = await dbClient.rawQuery('SELECT * FROM Picture');
// //     List<Picture> pictures = [];
// //     for (int i = 0; i < list.length; i++) {
// //       pictures.add( Picture(list[i]["id"], list[i]["text"], list[i]["picture"], id: 0, title: ''));
// //     }
// //     return pictures;
// //   }
// // //   var image = await get(
// // //   "https://images.pexels.com/photos/2047905/pexels-photo-2047905.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
// // // var bytes = image.bodyBytes;
// // // Picture picture = Picture(id, title, picture);
// // // savePicture(picture);
// // }


// // //save the picture to the db


// //   Future close() async {
// //     var dbClient = await _db;
// //     dbClient.close();
// //   }
