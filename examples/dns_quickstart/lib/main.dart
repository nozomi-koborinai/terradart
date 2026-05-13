/// DNS quickstart -- Phase 4.5 Wave 2 end-to-end example.
///
/// Defines an `InternalDnsStack` that provisions:
/// - a VPC network (`gnd-vpc`) the private zone attaches to,
/// - a private DNS managed zone (`internal.corp.`) scoped to the VPC via
///   `PrivateVisibilityConfig(networks: [PrivateVisibilityNetwork(...)])`,
/// - DNSSEC enabled via typed enums (`DnssecState.on`,
///   `DnssecKeyAlgorithm.rsasha256`, `DnssecKeyType.keySigning`),
///
/// demonstrating the 10 nested-block helper classes from
/// `google_dns_managed_zone` and the 6 schema-faithful enums
/// (visibility / DNSSEC state / DNSSEC non-existence / DNSSEC algorithm /
/// DNSSEC key-type / forwarding-path).
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

class InternalDnsStack extends Stack {
  InternalDnsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final vpc = GoogleComputeNetwork(
      localName: 'gnd_vpc',
      name: TfArg.literal('gnd-vpc'),
      autoCreateSubnetworks: TfArg.literal(false),
    );
    add(vpc);

    add(
      GoogleDnsManagedZone(
        localName: 'internal',
        name: TfArg.literal('internal-corp'),
        dnsName: TfArg.literal('internal.corp.'),
        description:
            TfArg.literal('Private DNS for internal services in gnd-vpc.'),
        visibility: TfArg.literal(DnsZoneVisibility.private),
        privateVisibilityConfig: PrivateVisibilityConfig(
          networks: [
            PrivateVisibilityNetwork(
              networkUrl: r'${google_compute_network.gnd_vpc.id}',
            ),
          ],
        ),
        dnssecConfig: const DnssecConfig(
          state: DnssecState.on,
          nonExistence: DnssecNonExistence.nsec3,
          defaultKeySpecs: [
            DnssecKeySpec(
              algorithm: DnssecKeyAlgorithm.rsasha256,
              keyType: DnssecKeyType.keySigning,
              keyLength: 2048,
            ),
            DnssecKeySpec(
              algorithm: DnssecKeyAlgorithm.rsasha256,
              keyType: DnssecKeyType.zoneSigning,
              keyLength: 1024,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
