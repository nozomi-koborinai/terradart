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
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/lists_stack.app.dart'),
      ) {
    final apiNetworkSecurity = add(
      GoogleProjectService(
        localName: 'api_networksecurity',
        service: .literal('networksecurity.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final blocklist = add(
      GoogleNetworkSecurityAddressGroup(
        localName: 'blocklist',
        name: .literal('terradart-blocklist'),
        parent: .literal('projects/$projectId'),
        location: .literal('us-central1'),
        type: .literal(.ipv4),
        capacity: .literal(100),
        items: .literal(const ['10.0.0.0/8', '192.168.0.0/16']),
        description: .literal('Blocked CIDR ranges (terradart demo)'),
        dependsOn: [apiNetworkSecurity],
      ),
    );

    add(
      GoogleNetworkSecurityUrlLists(
        localName: 'allowlist',
        name: .literal('terradart-allowlist'),
        location: .literal('us-central1'),
        values: .literal(const ['*.example.com', 'docs.example.org']),
        description: .literal('Allowed host matchers (terradart demo)'),
        dependsOn: [apiNetworkSecurity],
      ),
    );

    // A Network Connectivity Center hub (a global, free routing fabric; spokes
    // attach separately). Needs its own API, so enable it too -- an example that
    // enables any API must enable every API its resources need.
    final apiNetworkConnectivity = add(
      GoogleProjectService(
        localName: 'api_networkconnectivity',
        service: .literal('networkconnectivity.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    add(
      GoogleNetworkConnectivityHub(
        localName: 'hub',
        name: .literal('terradart-hub'),
        description: .literal('NCC routing hub (terradart demo)'),
        dependsOn: [apiNetworkConnectivity],
      ),
    );

    final auditor = add(
      GoogleServiceAccount(
        localName: 'address_group_auditor',
        accountId: .literal('terradart-ag-auditor'),
        displayName: .literal('Address group auditor'),
      ),
    );

    add(
      GoogleNetworkSecurityAddressGroupIamMember(
        localName: 'blocklist_auditor',
        addressGroup: blocklist.ref,
        role: .literal('roles/viewer'),
        member: auditor.principal,
        dependsOn: [blocklist, auditor],
      ),
    );

    // Literal address-group name -- emitted as a Dart constant at synth time.
    addConstant('blocklistName', .ref(blocklist.name));

    // Full address-group resource id -- Terraform output only (computed).
    addOutput('blocklist_id', blocklist.id);
  }
}
