import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

Object? _matchConfig(Stack stack) {
  final rules =
      (stack.synth().tfJson['resource']
          as Map)['google_compute_security_policy_rule'];
  final match = ((rules as Map)['office'] as Map)['match'] as List;
  return (match.single as Map)['config'];
}

void main() {
  group('a hand-written collection field takes TfArg', () {
    GoogleComputeSecurityPolicyRule rule(TfArg<List<String>> ranges) =>
        GoogleComputeSecurityPolicyRule(
          'office',
          securityPolicy: RefTo.literal('edge'),
          priority: const TfArg.literal(1000),
          action: ComputeSecurityPolicyRuleAction.allow,
          match: ComputeSecurityPolicyRuleMatch(
            versionedExpr: .srcIpsV1,
            config: .new(srcIpRanges: ranges),
          ),
        );

    test('a literal list synths as the list', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      stack.add(rule(const .literal(['203.0.113.0/24'])));
      expect(_matchConfig(stack), {
        'src_ip_ranges': ['203.0.113.0/24'],
      });
    });

    test('a variable synths as a var reference', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      final ranges = stack.variable<List<String>>('office_ranges');
      stack.add(rule(ranges));
      expect(_matchConfig(stack), {'src_ip_ranges': r'${var.office_ranges}'});
    });
  });

  group('a hand-written reference field takes RefTo', () {
    test('a route next hop names the instance by self_link', () {
      final vm = GoogleComputeInstance(
        'gateway_vm',
        name: const TfArg.literal('gateway-vm'),
        machineType: const TfArg.literal('e2-micro'),
        bootDisk: const ComputeInstanceBootDisk(),
        networkInterface: const [ComputeInstanceNetworkInterface()],
      );
      final route = GoogleComputeRoute(
        'via_vm',
        name: const TfArg.literal('via-vm'),
        network: RefTo.literal('default'),
        destRange: const TfArg.literal('10.8.0.0/16'),
        nextHop: .instance(vm.ref),
      );
      expect(
        route.argMap['next_hop_instance']!.toTfJson(),
        r'${google_compute_instance.gateway_vm.self_link}',
      );
    });

    test('a snapshot names its source disk by name', () {
      final disk = GoogleComputeDisk('data', name: const TfArg.literal('data'));
      final snapshot = GoogleComputeSnapshot(
        'data_snapshot',
        name: const TfArg.literal('data-snapshot'),
        source: .disk(disk.ref),
      );
      expect(
        snapshot.argMap['source_disk']!.toTfJson(),
        r'${google_compute_disk.data.name}',
      );
    });

    test('an internal load balancer target names its network by id', () {
      final vpc = GoogleComputeNetwork('vpc', name: const TfArg.literal('vpc'));
      final record = GoogleDnsRecordSet(
        'api',
        managedZone: RefTo.literal('internal'),
        name: const TfArg.literal('api.internal.example.com.'),
        type: DnsRecordSetType.a,
        routingPolicy: DnsRecordSetRoutingPolicy(
          wrr: [
            DnsRecordSetRoutingPolicyWrrRouting(
              weight: const TfArg.literal(1),
              healthCheckedTargets:
                  DnsRecordSetRoutingPolicyHealthCheckedTargets(
                    internalLoadBalancers: [
                      DnsRecordSetRoutingPolicyInternalLoadBalancer(
                        ipAddress: const TfArg.literal('10.0.0.10'),
                        networkUrl: vpc.ref,
                      ),
                    ],
                  ),
            ),
          ],
        ),
      );
      final policy =
          (record.argMap['routing_policy']!.toTfJson()! as List).single as Map;
      final wrr = (policy['wrr'] as List).single as Map;
      final targets = (wrr['health_checked_targets'] as List).single as Map;
      final ilb = (targets['internal_load_balancers'] as List).single as Map;
      expect(ilb['network_url'], r'${google_compute_network.vpc.id}');
    });
  });

  test('a security monitoring condition synths the block it requires', () {
    final condition = GoogleApigeeSecurityMonitoringCondition(
      'smc',
      conditionId: const TfArg.literal('smc'),
      orgId: const TfArg.literal('organizations/demo-org'),
      profile: const TfArg.literal('demo-profile'),
      scope: const TfArg.literal('demo-env'),
      includeAllResources:
          const ApigeeSecurityMonitoringConditionIncludeAllResources(),
    );
    expect(condition.argMap['include_all_resources']!.toTfJson(), [
      <String, Object?>{},
    ]);
  });
}
