/// Cloud Functions Gen 2 quickstart -- Wave 4 Round 1 end-to-end example.
///
/// Defines an `HttpFunctionStack` that provisions a Cloud Function (Gen 2)
/// named `hello-http`, backed by:
/// - a dedicated source-archive GCS bucket (`<project>-fn-source`),
/// - a single zip object placed in that bucket (synth-time content),
/// - a dedicated runtime service account that the function executes as,
/// - a HTTP-triggered Python 3.11 function with 256 MiB memory, a 60-second
///   timeout, and ingress restricted to internal callers + load balancers.
///
/// Demonstrates the sealed build `source` (`.storageSource` variant) and
/// the typed enum coverage from `google_cloudfunctions2_function`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/cloud_functions.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

final class HttpFunctionStack extends Stack {
  HttpFunctionStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ],
      ) {
    final sourceBucket = GoogleStorageBucket(
      'fn_source',
      name: .literal('$projectId-fn-source'),
      location: .literal('asia-northeast1'),
      forceDestroy: .literal(true),
      uniformBucketLevelAccess: .literal(true),
    );
    add(sourceBucket);

    final sourceObject = GoogleStorageBucketObject(
      'fn_source_zip',
      bucket: sourceBucket.ref,
      name: .literal('hello-http.zip'),
      body: .source(source: .literal('./hello-http.zip')),
    );
    add(sourceObject);

    final runtimeSa = GoogleServiceAccount(
      'fn_runtime',
      accountId: .literal('hello-http-runtime'),
      displayName: .literal('Runtime SA for hello-http Cloud Function'),
    );
    add(runtimeSa);

    final helloHttp = add(
      GoogleCloudfunctions2Function(
        'hello_http',
        name: .literal('hello-http'),
        location: .literal('asia-northeast1'),
        description: .literal('terradart Cloud Functions Gen 2 quickstart.'),
        buildConfig: Cloudfunctions2FunctionBuildConfig(
          runtime: .literal('python311'),
          entryPoint: .literal('hello'),
          source: .storageSource(
            .new(bucket: .of(sourceBucket), object: sourceObject.ref),
          ),
          updatePolicy: .automaticUpdatePolicy(.new()),
        ),
        serviceConfig: Cloudfunctions2FunctionServiceConfig(
          availableMemory: .literal('256M'),
          timeoutSeconds: .literal(60),
          minInstanceCount: .literal(0),
          maxInstanceCount: .literal(4),
          ingressSettings: .literal(.allowInternalAndGclb),
          serviceAccountEmail: .of(runtimeSa),
          environmentVariables: .literal({'LOG_LEVEL': 'info'}),
        ),
      ),
    );

    add(
      GoogleCloudfunctions2FunctionIamMember(
        'hello_http_invoker',
        function: helloHttp.ref,
        role: .literal('roles/cloudfunctions.invoker'),
        member: .allAuthenticatedUsers,
      ),
    );
  }
}
