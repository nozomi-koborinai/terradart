library;

import 'package:terradart_core/terradart_core.dart';
// GA: Google Cloud Provider and resource factories
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';
// Beta: Google Cloud Beta Provider and Firebase factories
import 'package:terradart_google_beta/firebase.dart';
import 'package:terradart_google_beta/provider.dart';

/// Recipe demonstrating composition of Google Cloud (GA) and Firebase (Beta)
/// in a single TerraDart [Stack].
///
/// Resources:
///   - 4 [GoogleProjectService] API activations (firebase, firestore, run, storage)
///   - 1 [GoogleFirebaseProject] (beta) - Project-level Firebase activation
///   - 1 [GoogleFirebaseWebApp] (beta) - Registered Firebase web client app
///   - 1 [GoogleFirestoreDatabase] (GA) - Native mode Firestore database
///   - 1 [GoogleStorageBucket] (GA) - Cloud Storage bucket for user uploads
///   - 1 [GoogleCloudRunV2Service] (GA) - Cloud Run v2 backend API service
final class FirebaseAppBackendStack extends Stack {
  FirebaseAppBackendStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
          GoogleBetaProvider(project: projectId, region: 'asia-northeast1'),
        ],
        backend: const LocalBackend(),
        devMode: true,
      ) {
    // -------------------------------------------------------------------------
    // 1. Enable required APIs
    // -------------------------------------------------------------------------
    final apiFirebase = add(
      GoogleProjectService(
        'api_firebase',
        service: .literal('firebase.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiFirestore = add(
      GoogleProjectService(
        'api_firestore',
        service: .literal('firestore.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiRun = add(
      GoogleProjectService(
        'api_run',
        service: .literal('run.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        'api_storage',
        service: .literal('storage.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // -------------------------------------------------------------------------
    // 2. [Beta] Firebase project initialization & web app registration
    // -------------------------------------------------------------------------
    final fbProject = add(
      GoogleFirebaseProject(
        'firebase_core',
        project: .literal(projectId),
        dependsOn: [apiFirebase],
      ),
    );

    add(
      GoogleFirebaseWebApp(
        'web_client',
        displayName: .literal('Frontend Client'),
        project: .literal(projectId),
        dependsOn: [fbProject],
      ),
    );

    // -------------------------------------------------------------------------
    // 3. [GA] Cloud Firestore Database (Native mode)
    // -------------------------------------------------------------------------
    final firestoreDb = add(
      GoogleFirestoreDatabase(
        'default_db',
        name: .literal('(default)'),
        locationId: .literal('asia-northeast1'),
        type: .literal(.firestoreNative),
        deleteProtectionState: .literal(.disabled),
        deletionPolicy: .literal('DELETE'),
        dependsOn: [apiFirestore, fbProject],
      ),
    );

    // -------------------------------------------------------------------------
    // 4. [GA] Cloud Storage for user-uploaded assets
    // -------------------------------------------------------------------------
    final uploadsBucket = add(
      GoogleStorageBucket(
        'uploads',
        name: .literal('$projectId-app-uploads'),
        location: .literal('ASIA-NORTHEAST1'),
        storageClass: .literal(.standard),
        uniformBucketLevelAccess: .literal(true),
        forceDestroy: .literal(true),
        dependsOn: [apiStorage],
      ),
    );

    // -------------------------------------------------------------------------
    // 5. [GA] Backend API Service (Cloud Run v2)
    // -------------------------------------------------------------------------
    add(
      GoogleCloudRunV2Service(
        'backend_api',
        name: .literal('backend-api'),
        location: .literal('asia-northeast1'),
        deletionProtection: .literal(false),
        template: CloudRunV2ServiceTemplate(
          containers: [
            .new(
              name: .literal('server'),
              image: .literal('us-docker.pkg.dev/cloudrun/container/hello'),
              ports: .new(containerPort: .literal(8080)),
              env: [
                .new(
                  name: .literal('UPLOAD_BUCKET_NAME'),
                  source: .value(uploadsBucket.name),
                ),
              ],
            ),
          ],
        ),
        dependsOn: [apiRun, firestoreDb],
      ),
    );
  }
}
