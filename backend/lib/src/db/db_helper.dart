import 'package:sqlite3/sqlite3.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = _initDatabase();
    return _database!;
  }

  Database _initDatabase() {
    final path = 'lib/src/db/task_manager.db';
    Database db = sqlite3.open(path);
    _onCreate(db);
    return db;
  }

  void _onCreate(Database db) {
    db.execute('''
      CREATE TABLE IF NOT EXISTS Users (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL,
        avatar TEXT
      )
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS Permissions (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        can_edit BOOLEAN NOT NULL,
        can_delete BOOLEAN NOT NULL,
        can_assign BOOLEAN NOT NULL,
        can_change_status BOOLEAN NOT NULL,
        can_change_priority BOOLEAN NOT NULL
      )
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS Projects (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL UNIQUE,
        description TEXT,
        create_at INTEGER NOT NULL,
        update_at INTEGER,
        create_user_id INTEGER,
        status INTEGER NOT NULL,
        priority INTEGER NOT NULL,
        FOREIGN KEY (create_user_id) REFERENCES Users (id)
      )
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS Comments (
        id INTEGER PRIMARY KEY,
        text TEXT NOT NULL,
        create_at INTEGER NOT NULL,
        update_at INTEGER,
        user_id INTEGER,
        FOREIGN KEY (user_id) REFERENCES Users (id)
      )
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS Tasks (
        id INTEGER PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT,
        done BOOLEAN NOT NULL,
        priority INTEGER NOT NULL,
        status INTEGER NOT NULL,
        create_at INTEGER NOT NULL,
        update_at INTEGER,
        last_update_at INTEGER,
        create_user_id INTEGER,
        last_updated_user_id INTEGER,
        project_id INTEGER,
        FOREIGN KEY (create_user_id) REFERENCES Users (id),
        FOREIGN KEY (last_updated_user_id) REFERENCES Users (id),
        FOREIGN KEY (project_id) REFERENCES Projects (id)
      )
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS TaskUsers (
        task_id INTEGER,
        user_id INTEGER,
        permissions_id INTEGER,
        PRIMARY KEY (task_id, user_id),
        FOREIGN KEY (task_id) REFERENCES Tasks (id),
        FOREIGN KEY (user_id) REFERENCES Users (id),
        FOREIGN KEY (permissions_id) REFERENCES Permissions (id)
      )
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS ProjectUsers (
        project_id INTEGER,
        user_id INTEGER,
        permissions_id INTEGER,
        PRIMARY KEY (project_id, user_id),
        FOREIGN KEY (project_id) REFERENCES Projects (id),
        FOREIGN KEY (user_id) REFERENCES Users (id),
        FOREIGN KEY (permissions_id) REFERENCES Permissions (id)
      )
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS TaskComments (
        task_id INTEGER,
        comment_id INTEGER,
        PRIMARY KEY (task_id, comment_id),
        FOREIGN KEY (task_id) REFERENCES Tasks (id),
        FOREIGN KEY (comment_id) REFERENCES Comments (id)
      )
    ''');

    db.execute('''
      CREATE TABLE IF NOT EXISTS TaskAssignments (
        task_id INTEGER,
        assigned_user_id INTEGER,
        PRIMARY KEY (task_id, assigned_user_id),
        FOREIGN KEY (task_id) REFERENCES Tasks (id),
        FOREIGN KEY (assigned_user_id) REFERENCES Users (id)
      )
    ''');
  }
}
