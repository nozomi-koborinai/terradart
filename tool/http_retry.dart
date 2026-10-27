import 'dart:io';

/// Statuses a hints fetch treats as a blip and tries again.
const transientHttpStatuses = {408, 429, 500, 502, 503, 504};

/// GETs [url] and returns the response.
///
/// A [transientHttpStatuses] response is drained and tried again, up to
/// [attempts] times. Any other status is returned so the caller can treat
/// 404 as "nothing here" and anything else as fatal. [delay] waits before
/// the next try; attempt 1 is the first failure. Tests pass a zero delay.
Future<HttpClientResponse> getRetryingTransient(
  HttpClient client,
  Uri url, {
  int attempts = 5,
  Duration Function(int attempt)? delay,
}) async {
  final wait = delay ?? ((n) => Duration(milliseconds: 200 * (1 << (n - 1))));
  for (var attempt = 1; ; attempt++) {
    final response = await (await client.getUrl(url)).close();
    final retry =
        transientHttpStatuses.contains(response.statusCode) &&
        attempt < attempts;
    if (!retry) return response;
    await response.drain<void>();
    await Future<void>.delayed(wait(attempt));
  }
}
