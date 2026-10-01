/// Public CA quickstart — ACME external account binding (EAB) key.
///
/// Enables `publicca.googleapis.com` and creates a global EAB key for Google
/// Trust Services. The key is create-only (destroy drops state only) and does
/// not issue a certificate by itself.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/public_ca.dart';

/// Public CA stack: EAB key only.
final class PublicCaStack extends Stack {
  PublicCaStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiPublicCa = add(
      GoogleProjectService(
        'api_publicca',
        service: .literal('publicca.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GooglePublicCaExternalAccountKey(
        'acme_eab',
        location: .literal('global'),
        dependsOn: [apiPublicCa],
      ),
    );
  }
}
