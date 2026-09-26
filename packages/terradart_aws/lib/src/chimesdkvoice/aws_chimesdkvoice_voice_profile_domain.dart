// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chimesdkvoice_voice_profile_domain`.
const Set<String> _awsChimesdkvoiceVoiceProfileDomainSensitive = <String>{};

/// Typed helper for the `server_side_encryption_configuration` block of
/// `aws_chimesdkvoice_voice_profile_domain` (derived from provider schema).
@immutable
final class ChimesdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration {
  const ChimesdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration({
    required this.kmsKeyArn,
  });

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Factory wrapper for `aws_chimesdkvoice_voice_profile_domain`.
final class AwsChimesdkvoiceVoiceProfileDomain extends Resource {
  static const String tfType = 'aws_chimesdkvoice_voice_profile_domain';

  AwsChimesdkvoiceVoiceProfileDomain({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required ChimesdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration
    serverSideEncryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'server_side_encryption_configuration': TfArg.literal(
             serverSideEncryptionConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsChimesdkvoiceVoiceProfileDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
