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
/// Demonstrates the sealed `SourceConfig` dispatch (`StorageSource` variant)
/// and the typed enum coverage from `google_cloudfunctions2_function`.
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
      localName: 'fn_source',
      name: TfArg.literal('$projectId-fn-source'),
      location: TfArg.literal('asia-northeast1'),
      forceDestroy: TfArg.literal(true),
      uniformBucketLevelAccess: TfArg.literal(true),
    );
    add(sourceBucket);

    final sourceObject = GoogleStorageBucketObject(
      localName: 'fn_source_zip',
      bucket: TfArg.ref(sourceBucket.nameRef),
      name: TfArg.literal('hello-http.zip'),
      body: StorageBucketObjectBucketObjectFromSource(
        source: TfArg.literal('./hello-http.zip'),
      ),
    );
    add(sourceObject);

    final runtimeSa = GoogleServiceAccount(
      localName: 'fn_runtime',
      accountId: TfArg.literal('hello-http-runtime'),
      displayName: TfArg.literal('Runtime SA for hello-http Cloud Function'),
    );
    add(runtimeSa);

    final helloHttp = add(
      GoogleCloudfunctions2Function(
        localName: 'hello_http',
        name: TfArg.literal('hello-http'),
        location: TfArg.literal('asia-northeast1'),
        description: TfArg.literal(
          'terradart Cloud Functions Gen 2 quickstart.',
        ),
        buildConfig: Cloudfunctions2FunctionBuildConfig(
          runtime: TfArg.literal('python311'),
          entryPoint: TfArg.literal('hello'),
          source: StorageSource(
            bucket: TfArg.ref(sourceBucket.nameRef),
            object: TfArg.ref(sourceObject.nameRef),
          ),
        ),
        serviceConfig: Cloudfunctions2FunctionServiceConfig(
          availableMemory: TfArg.literal('256M'),
          timeoutSeconds: TfArg.literal(60),
          minInstanceCount: TfArg.literal(0),
          maxInstanceCount: TfArg.literal(4),
          ingressSettings: TfArg.literal(
            IngressSettings.allowInternalAndGclb,
          ),
          serviceAccountEmail: TfArg.ref(runtimeSa.email),
          environmentVariables: TfArg.literal({'LOG_LEVEL': 'info'}),
        ),
      ),
    );

    add(
      GoogleCloudfunctions2FunctionIamMember(
        localName: 'hello_http_invoker',
        cloudFunction: TfArg.ref(helloHttp.nameRef),
        location: TfArg.literal('asia-northeast1'),
        role: TfArg.literal('roles/cloudfunctions.invoker'),
        member: TfArg.literal('allAuthenticatedUsers'),
      ),
    );
  }
}
