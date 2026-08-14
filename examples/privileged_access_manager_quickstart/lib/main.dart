/// Privileged Access Manager entitlement quickstart.
///
/// Enables `privilegedaccessmanager.googleapis.com`, grants the PAM
/// service agent, and creates a project-scoped entitlement that lets an
/// in-stack service account request `roles/browser` for 30 minutes.
/// Creating the entitlement does not grant access — no grant is
/// requested.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/privileged_access_manager.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// PAM stack: unused project entitlement (no grant).
final class PrivilegedAccessManagerStack extends Stack {
  PrivilegedAccessManagerStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final current = addData(GoogleProject(localName: 'current'));
    final parent = 'projects/$projectId';
    final projectResource =
        '//cloudresourcemanager.googleapis.com/projects/$projectId';

    final apiPam = add(
      GoogleProjectService(
        localName: 'api_pam',
        service: TfArg.literal('privilegedaccessmanager.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final requester = add(
      GoogleServiceAccount(
        localName: 'requester',
        accountId: TfArg.literal('pam-requester'),
        displayName: TfArg.literal('PAM entitlement requester'),
      ),
    );

    final pamAgent = add(
      GoogleProjectIamMember(
        localName: 'pam_service_agent',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/privilegedaccessmanager.serviceAgent'),
        member: TfArg.literal(
          'serviceAccount:service-${current.number.interpolation}'
          '@gcp-sa-pam.iam.gserviceaccount.com',
        ),
        dependsOn: [ResourceDependency(apiPam)],
      ),
    );

    add(
      GooglePrivilegedAccessManagerEntitlement(
        localName: 'browser',
        location: TfArg.literal('global'),
        entitlementId: TfArg.literal('terradart-pam'),
        parent: TfArg.literal(parent),
        maxRequestDuration: TfArg.literal('1800s'),
        eligibleUsers: [
          PrivilegedAccessManagerEntitlementEligibleUsers(
            principals: TfArg.literal([requester.iamMember.interpolation]),
          ),
        ],
        privilegedAccess: PrivilegedAccessManagerEntitlementPrivilegedAccess(
          gcpIamAccess:
              PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccess(
            resourceType: TfArg.literal(
              'cloudresourcemanager.googleapis.com/Project',
            ),
            resource: TfArg.literal(projectResource),
            roleBindings: [
              PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccessRoleBindings(
                role: TfArg.literal('roles/browser'),
              ),
            ],
          ),
        ),
        requesterJustificationConfig:
            const PrivilegedAccessManagerEntitlementRequesterJustificationConfig(
          unstructured:
              PrivilegedAccessManagerEntitlementRequesterJustificationConfigUnstructured(),
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        dependsOn: [
          ResourceDependency(apiPam),
          ResourceDependency(pamAgent),
          ResourceDependency(requester),
        ],
      ),
    );
  }
}
