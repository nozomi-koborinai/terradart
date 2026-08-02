/// IAP settings quickstart — project-level `iap_web` settings plus regional
/// location-web authoritative IAM adjuncts.
///
/// Enables `iap.googleapis.com` / `iam.googleapis.com`, manages
/// `google_iap_settings` for `projects/<projectId>/iap_web`, and exercises
/// `google_iap_location_web_iam_binding` / `_iam_policy` for a demo SA.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

String _iamPolicyDataJson({
  required String role,
  required String member,
}) {
  return jsonEncode({
    'bindings': [
      {
        'role': role,
        'members': [member],
      },
    ],
  });
}

/// IAP settings stack: project-level web settings + location-web IAM.
final class IapSettingsStack extends Stack {
  IapSettingsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiIap = add(
      GoogleProjectService(
        localName: 'api_iap',
        service: TfArg.literal('iap.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiIam = add(
      GoogleProjectService(
        localName: 'api_iam',
        service: TfArg.literal('iam.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final webInvoker = add(
      GoogleServiceAccount(
        localName: 'web_invoker',
        accountId: TfArg.literal('iap-web-invoker'),
        displayName: TfArg.literal('IAP location-web invoker (demo)'),
        dependsOn: [ResourceDependency(apiIam)],
      ),
    );

    add(
      GoogleIapSettings(
        localName: 'web',
        name: TfArg.literal('projects/$projectId/iap_web'),
        dependsOn: [ResourceDependency(apiIap)],
      ),
    );

    final locationBinding = add(
      GoogleIapLocationWebIamBinding(
        localName: 'location_web_invokers',
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/iap.httpsResourceAccessor'),
        members: TfArg.literal([webInvoker.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(apiIap),
          ResourceDependency(webInvoker),
        ],
      ),
    );

    add(
      GoogleIapLocationWebIamPolicy(
        localName: 'location_web_policy',
        location: TfArg.literal('us-central1'),
        policyData: TfArg.literal(
          _iamPolicyDataJson(
            role: 'roles/iap.httpsResourceAccessor',
            member:
                'serviceAccount:iap-web-invoker@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(apiIap),
          ResourceDependency(locationBinding),
        ],
      ),
    );
  }
}
