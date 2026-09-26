// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_email_identity`.
const Set<String> _awsSesv2EmailIdentitySensitive = <String>{
  'dkim_signing_attributes.domain_signing_private_key',
};

/// Typed helper for the `dkim_signing_attributes` block of
/// `aws_sesv2_email_identity` (derived from provider schema).
@immutable
final class Sesv2EmailIdentityDkimSigningAttributes {
  const Sesv2EmailIdentityDkimSigningAttributes({
    this.domainSigningPrivateKey,
    this.domainSigningSelector,
    this.nextSigningKeyLength,
  });

  final TfArg<String>? domainSigningPrivateKey;

  final TfArg<String>? domainSigningSelector;

  final TfArg<String>? nextSigningKeyLength;

  Map<String, Object?> encode() => {
    if (domainSigningPrivateKey != null)
      'domain_signing_private_key': domainSigningPrivateKey!.toTfJson(),
    if (domainSigningSelector != null)
      'domain_signing_selector': domainSigningSelector!.toTfJson(),
    if (nextSigningKeyLength != null)
      'next_signing_key_length': nextSigningKeyLength!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sesv2_email_identity`.
final class AwsSesv2EmailIdentity extends Resource {
  static const String tfType = 'aws_sesv2_email_identity';

  AwsSesv2EmailIdentity({
    required super.localName,
    TfArg<String>? configurationSetName,
    required TfArg<String> emailIdentity,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    Sesv2EmailIdentityDkimSigningAttributes? dkimSigningAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (configurationSetName != null)
             'configuration_set_name': configurationSetName,
           'email_identity': emailIdentity,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (dkimSigningAttributes != null)
             'dkim_signing_attributes': TfArg.literal(
               dkimSigningAttributes.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2EmailIdentitySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `identity_type` attribute.
  TfRef<String> get identityType =>
      TfRef.attribute<String>(this, 'identity_type');

  /// Reference to `verification_status` attribute.
  TfRef<String> get verificationStatus =>
      TfRef.attribute<String>(this, 'verification_status');

  /// Reference to `verified_for_sending_status` attribute.
  TfRef<bool> get verifiedForSendingStatus =>
      TfRef.attribute<bool>(this, 'verified_for_sending_status');
}
