import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import 'http_retry.dart';

void main() {
  late HttpServer server;
  var hits = 0;
  var status = 200;
  const body = 'package enums\n';

  setUp(() async {
    hits = 0;
    status = 200;
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    server.listen((request) {
      hits++;
      request.response.statusCode = status == 503 && hits >= 3 ? 200 : status;
      request.response.write(status == 503 && hits >= 3 ? body : '');
      request.response.close();
    });
  });

  tearDown(() => server.close(force: true));

  Uri url() => Uri.parse('http://127.0.0.1:${server.port}/enums.go');

  test('a 503 is fetched again until the body arrives', () async {
    status = 503;
    final client = HttpClient();
    try {
      final response = await getRetryingTransient(
        client,
        url(),
        waitAfterFailure: (_) => Duration.zero,
      );
      expect(response.statusCode, 200);
      expect(await response.transform(utf8.decoder).join(), body);
      expect(hits, 3);
    } finally {
      client.close(force: true);
    }
  });

  test('a 404 is returned without another fetch', () async {
    status = 404;
    final client = HttpClient();
    try {
      final response = await getRetryingTransient(
        client,
        url(),
        waitAfterFailure: (_) => Duration.zero,
      );
      expect(response.statusCode, 404);
      await response.drain<void>();
      expect(hits, 1);
    } finally {
      client.close(force: true);
    }
  });
}
