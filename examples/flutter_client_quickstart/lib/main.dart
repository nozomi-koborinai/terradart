/// Flutter client quickstart.
///
/// A Cloud Run hello service and an uploads bucket, one Stack per [Env].
/// The service URL and the bucket name exist only after apply, so they are
/// outputs, and `addDartDefineOutput` writes them into the define file the
/// Flutter app is built with. Synth writes the typed reader to
/// `app/lib/generated/flutter_client_stack.app.dart`; the app reads it with
/// `FlutterClientStackOutputs.fromDartDefine()`.
///
/// A sensitive output is left out of that file. Nothing here is sensitive:
/// a client binary can be unpacked, so a secret never belongs in it.
library;

import 'package:terradart_example_flutter_client_quickstart/env.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

/// Cloud Run API plus the bucket the app uploads to.
final class FlutterClientStack extends Stack {
  FlutterClientStack({required this.projectId, required this.env})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ],
        appExports: AppExports(
          'app/lib/generated/flutter_client_stack.app.dart',
        ),
      ) {
    final api = add(
      GoogleCloudRunV2Service(
        'api',
        name: .literal('app-api-${env.name}'),
        location: .literal('asia-northeast1'),
        deletionProtection: .literal(false),
        template: CloudRunV2ServiceTemplate(
          containers: [
            .new(image: .literal('us-docker.pkg.dev/cloudrun/container/hello')),
          ],
        ),
      ),
    );
    add(
      GoogleCloudRunV2ServiceIamMember(
        'api_public',
        service: api.ref,
        role: .literal('roles/run.invoker'),
        member: .allUsers,
      ),
    );
    final uploads = add(
      GoogleStorageBucket(
        'uploads',
        name: .literal('$projectId-uploads-${env.name}'),
        location: .literal('ASIA-NORTHEAST1'),
        uniformBucketLevelAccess: .literal(true),
        forceDestroy: .literal(true),
      ),
    );

    addOutput('api_url', api.uri, description: 'Base URL of the API.');
    addOutput('api_urls', api.urls);
    addOutput('uploads_bucket', uploads.name);
    addDartDefineOutput();
  }

  /// GCP project the provider configures. Synth reads `GCP_PROJECT_ID`.
  final String projectId;

  /// Which copy this synthesis is: names and the Terraform directory.
  final Env env;
}
