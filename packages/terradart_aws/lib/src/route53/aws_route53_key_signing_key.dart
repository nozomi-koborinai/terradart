// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_key_signing_key`.
const Set<String> _awsRoute53KeySigningKeySensitive = <String>{};

/// Factory wrapper for `aws_route53_key_signing_key`.
final class AwsRoute53KeySigningKey extends Resource {
  static const String tfType = 'aws_route53_key_signing_key';

  AwsRoute53KeySigningKey({
    required super.localName,
    required TfArg<String> hostedZoneId,
    required TfArg<String> keyManagementServiceArn,
    required TfArg<String> name,
    TfArg<String>? status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hosted_zone_id': hostedZoneId,
           'key_management_service_arn': keyManagementServiceArn,
           'name': name,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53KeySigningKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `digest_algorithm_mnemonic` attribute.
  TfRef<String> get digestAlgorithmMnemonic =>
      TfRef.attribute<String>(this, 'digest_algorithm_mnemonic');

  /// Reference to `digest_algorithm_type` attribute.
  TfRef<num> get digestAlgorithmType =>
      TfRef.attribute<num>(this, 'digest_algorithm_type');

  /// Reference to `digest_value` attribute.
  TfRef<String> get digestValue =>
      TfRef.attribute<String>(this, 'digest_value');

  /// Reference to `dnskey_record` attribute.
  TfRef<String> get dnskeyRecord =>
      TfRef.attribute<String>(this, 'dnskey_record');

  /// Reference to `ds_record` attribute.
  TfRef<String> get dsRecord => TfRef.attribute<String>(this, 'ds_record');

  /// Reference to `flag` attribute.
  TfRef<num> get flag => TfRef.attribute<num>(this, 'flag');

  /// Reference to `key_tag` attribute.
  TfRef<num> get keyTag => TfRef.attribute<num>(this, 'key_tag');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `signing_algorithm_mnemonic` attribute.
  TfRef<String> get signingAlgorithmMnemonic =>
      TfRef.attribute<String>(this, 'signing_algorithm_mnemonic');

  /// Reference to `signing_algorithm_type` attribute.
  TfRef<num> get signingAlgorithmType =>
      TfRef.attribute<num>(this, 'signing_algorithm_type');
}
