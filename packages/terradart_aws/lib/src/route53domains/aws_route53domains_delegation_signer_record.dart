// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53domains_delegation_signer_record`.
const Set<String> _awsRoute53domainsDelegationSignerRecordSensitive =
    <String>{};

/// Typed helper for the `signing_attributes` block of
/// `aws_route53domains_delegation_signer_record` (derived from provider schema).
@immutable
final class Route53domainsDelegationSignerRecordSigningAttributes {
  const Route53domainsDelegationSignerRecordSigningAttributes({
    required this.algorithm,
    required this.flags,
    required this.publicKey,
  });

  final TfArg<num> algorithm;

  final TfArg<num> flags;

  final TfArg<String> publicKey;

  Map<String, Object?> encode() => {
    'algorithm': algorithm.toTfJson(),
    'flags': flags.toTfJson(),
    'public_key': publicKey.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53domains_delegation_signer_record`.
final class AwsRoute53domainsDelegationSignerRecord extends Resource {
  static const String tfType = 'aws_route53domains_delegation_signer_record';

  AwsRoute53domainsDelegationSignerRecord({
    required super.localName,
    required TfArg<String> domainName,
    List<Route53domainsDelegationSignerRecordSigningAttributes>?
    signingAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (signingAttributes != null)
             'signing_attributes': TfArg.literal([
               for (final e in signingAttributes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53domainsDelegationSignerRecordSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dnssec_key_id` attribute.
  TfRef<String> get dnssecKeyId =>
      TfRef.attribute<String>(this, 'dnssec_key_id');
}
