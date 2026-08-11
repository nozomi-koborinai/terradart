/// Network Security lists quickstart -- an end-to-end terradart example.
///
/// Defines a `ListsStack` that enables the Network Security API and provisions:
/// - an IPv4 address group (a reusable set of CIDR ranges for firewall
///   policies),
/// - a URL list (a reusable set of host matchers for Secure Web Proxy).
///
/// Both are free, regional config primitives that create and destroy cleanly in
/// a single project. Exports the address group name as a typed Dart constant.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Security lists Stack: an address group + a URL list.
final class ListsStack extends Stack {
  ListsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiNetworkSecurity = add(
      GoogleProjectService(
        localName: 'api_networksecurity',
        service: TfArg.literal('networksecurity.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final blocklist = add(
      GoogleNetworkSecurityAddressGroup(
        localName: 'blocklist',
        name: TfArg.literal('terradart-blocklist'),
        parent: TfArg.literal('projects/$projectId'),
        location: TfArg.literal('us-central1'),
        type: TfArg.literal(NetworkSecurityAddressGroupType.ipv4),
        capacity: TfArg.literal(100),
        items: TfArg.literal(const ['10.0.0.0/8', '192.168.0.0/16']),
        description: TfArg.literal('Blocked CIDR ranges (terradart demo)'),
        dependsOn: [ResourceDependency(apiNetworkSecurity)],
      ),
    );

    add(
      GoogleNetworkSecurityUrlLists(
        localName: 'allowlist',
        name: TfArg.literal('terradart-allowlist'),
        location: TfArg.literal('us-central1'),
        values: TfArg.literal(const ['*.example.com', 'docs.example.org']),
        description: TfArg.literal('Allowed host matchers (terradart demo)'),
        dependsOn: [ResourceDependency(apiNetworkSecurity)],
      ),
    );

    // A Network Connectivity Center hub (a global, free routing fabric; spokes
    // attach separately). Needs its own API, so enable it too -- an example that
    // enables any API must enable every API its resources need.
    final apiNetworkConnectivity = add(
      GoogleProjectService(
        localName: 'api_networkconnectivity',
        service: TfArg.literal('networkconnectivity.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    add(
      GoogleNetworkConnectivityHub(
        localName: 'hub',
        name: TfArg.literal('terradart-hub'),
        description: TfArg.literal('NCC routing hub (terradart demo)'),
        dependsOn: [ResourceDependency(apiNetworkConnectivity)],
      ),
    );

    final auditor = add(
      GoogleServiceAccount(
        localName: 'address_group_auditor',
        accountId: TfArg.literal('terradart-ag-auditor'),
        displayName: TfArg.literal('Address group auditor'),
      ),
    );

    add(
      GoogleNetworkSecurityAddressGroupIamMember(
        localName: 'blocklist_auditor',
        name: TfArg.ref(blocklist.nameRef),
        location: TfArg.literal('us-central1'),
        role: TfArg.literal('roles/viewer'),
        member: TfArg.ref(auditor.iamMember),
        dependsOn: [
          ResourceDependency(blocklist),
          ResourceDependency(auditor),
        ],
      ),
    );

    // Literal address-group name -- emitted as a Dart constant at synth time.
    addExport('BLOCKLIST_NAME', StringExport('terradart-blocklist'));

    // Full address-group resource id -- Terraform output only (computed).
    addExport(
      'BLOCKLIST_ID',
      ResourceIdExport(blocklist.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/lists_stack.app.dart');
  }
}
