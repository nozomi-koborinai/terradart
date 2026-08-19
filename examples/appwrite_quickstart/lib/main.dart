/// Appwrite quickstart -- the smallest terradart_appwrite example.
///
/// Defines an `AppwriteDemoStack` with a project and a storage bucket
/// against the official `appwrite/appwrite` Terraform provider.
///
/// Synth needs no credentials and none appear in `tf-out/` — apply-time
/// authentication uses the `APPWRITE_ORGANIZATION_API_KEY` /
/// `APPWRITE_API_KEY` environment variables (see `AppwriteProvider`).
/// Demo literals stand in for the organization; replace them with your
/// own IDs when applying for real.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_appwrite/project.dart';
import 'package:terradart_appwrite/provider.dart';
import 'package:terradart_appwrite/storage.dart';
import 'package:terradart_core/terradart_core.dart';

/// Appwrite demo stack: one project and one file bucket.
final class AppwriteDemoStack extends Stack {
  AppwriteDemoStack()
      : super(
          providers: [
            const AppwriteProvider(
              endpoint: 'https://cloud.appwrite.io/v1',
              organizationId: 'terradart-demo-org',
            ),
          ],
        ) {
    add(
      AppwriteProject(
        localName: 'demo',
        name: TfArg.literal('terradart-demo'),
      ),
    );

    add(
      AppwriteStorageBucket(
        localName: 'uploads',
        name: TfArg.literal('uploads'),
        fileSecurity: TfArg.literal(true),
        maximumFileSize: TfArg.literal(10485760),
      ),
    );
  }
}
