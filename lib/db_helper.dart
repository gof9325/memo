import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DbHelper{
  final String tableName = "memo";

  initDB() async{
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'MyMemosDB.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async{
        await db.execute('CREATE TABLE $tableName(seq INTEGER PRIMARY KEY, title TEXT, content TEXT)');
      },
      onUpgrade: (db, oldVersion, newVersion){}
    );
  }

}