import 'dart:io';

const transientHttpStatuses = {408, 429, 500, 502, 503, 504};

Future<HttpClientResponse> getRetryingTransient(
  HttpClient client,
  Uri url, {
  int attempts = 5,
  Duration Function(int failuresSoFar)? waitAfterFailure,
}) async {
  final wait =
      waitAfterFailure ??
      ((failuresSoFar) =>
          Duration(milliseconds: 200 * (1 << (failuresSoFar - 1))));
  for (var failuresSoFar = 1; ; failuresSoFar++) {
    final response = await (await client.getUrl(url)).close();
    final retry =
        transientHttpStatuses.contains(response.statusCode) &&
        failuresSoFar < attempts;
    if (!retry) return response;
    await response.drain<void>();
    await Future<void>.delayed(wait(failuresSoFar));
  }
}
