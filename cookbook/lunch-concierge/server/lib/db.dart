import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:lunch_concierge_shared/generated/lunch_stack.app.dart';
import 'package:lunch_concierge_shared/schema.dart';
import 'package:postgres/postgres.dart';

final class LunchHistoryRepository {
  LunchHistoryRepository();

  Future<Connection>? _readyConnection;

  Future<Connection> _connection() {
    return _readyConnection ??= _openAndPrepare();
  }

  Future<Connection> _openAndPrepare() async {
    stderr.writeln(
      'opening postgres connection to 127.0.0.1:5432/'
      '${LunchStackExports.DATABASE_NAME} as ${LunchStackExports.DATABASE_USER}',
    );
    final connection = await _withRetry(
      () => Connection.open(
        Endpoint(
          host: '127.0.0.1',
          port: 5432,
          database: LunchStackExports.DATABASE_NAME,
          username: LunchStackExports.DATABASE_USER,
        ),
        settings: const ConnectionSettings(sslMode: SslMode.disable),
      ),
    );
    stderr.writeln('postgres connection opened; ensuring schema');
    await _ensureSchema(connection);
    stderr.writeln('postgres schema ready');
    return connection;
  }

  Future<void> _ensureSchema(Connection connection) async {
    try {
      await connection.execute('''
        create table if not exists lunch_suggestions (
          id bigserial primary key,
          area text not null,
          mood text not null,
          budget_yen integer not null,
          suggestion_json jsonb not null,
          created_at timestamptz not null default now()
        )
      ''');
    } on Exception catch (error, stackTrace) {
      stderr.writeln('postgres schema ensure failed: $error');
      stderr.writeln(stackTrace);
      rethrow;
    }
  }

  Future<void> save(LunchRequest request, LunchResponse response) async {
    final connection = await _connection();
    try {
      await connection.execute(
        Sql.named('''
          insert into lunch_suggestions
            (area, mood, budget_yen, suggestion_json)
          values
            (@area, @mood, @budgetYen, @suggestionJson)
        '''),
        parameters: {
          'area': request.area,
          'mood': request.mood,
          'budgetYen': request.budgetYen,
          'suggestionJson': jsonEncode(response.toJson()),
        },
      );
    } on Exception catch (error, stackTrace) {
      stderr.writeln('postgres history insert failed: $error');
      stderr.writeln(stackTrace);
      rethrow;
    }
  }
}

Future<T> _withRetry<T>(
  Future<T> Function() operation, {
  int maxAttempts = 10,
  Duration delay = const Duration(seconds: 2),
}) async {
  Object? lastError;
  StackTrace? lastStackTrace;
  for (var attempt = 1; attempt <= maxAttempts; attempt++) {
    try {
      return await operation();
    } on Exception catch (error, stackTrace) {
      lastError = error;
      lastStackTrace = stackTrace;
      stderr.writeln('operation attempt $attempt/$maxAttempts failed: $error');
      if (attempt == maxAttempts) break;
      await Future<void>.delayed(delay);
    }
  }
  stderr.writeln('operation failed after $maxAttempts attempts');
  Error.throwWithStackTrace(lastError!, lastStackTrace!);
}
