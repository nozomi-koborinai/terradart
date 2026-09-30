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

  final TfArg<Sesv2EmailIdentityDkimSigningAttributesNextSigningKeyLength>?
  nextSigningKeyLength;

  Map<String, Object?> encode() => {
    'domain_signing_private_key': ?domainSigningPrivateKey?.toTfJson(),
    'domain_signing_selector': ?domainSigningSelector?.toTfJson(),
    'next_signing_key_length': ?nextSigningKeyLength?.toTfJson(),
  };
}

/// `next_signing_key_length` — derived from the provider schema description.
enum Sesv2EmailIdentityDkimSigningAttributesNextSigningKeyLength
    implements TerraformEnum {
  rsa1024Bit('RSA_1024_BIT'),
  rsa2048Bit('RSA_2048_BIT');

  const Sesv2EmailIdentityDkimSigningAttributesNextSigningKeyLength(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
           'configuration_set_name': ?configurationSetName,
           'email_identity': emailIdentity,
           'region': ?region,
           'tags': ?tags,
           if (dkimSigningAttributes != null)
             'dkim_signing_attributes': TfArg.literal(
               dkimSigningAttributes.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2EmailIdentitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2EmailIdentity>`.
  RefTo<AwsSesv2EmailIdentity> get ref => RefTo.of(this);

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

  /// Reference to `configuration_set_name` attribute.
  TfRef<String> get configurationSetNameRef =>
      TfRef.attribute<String>(this, 'configuration_set_name');

  /// Reference to `email_identity` attribute.
  TfRef<String> get emailIdentityRef =>
      TfRef.attribute<String>(this, 'email_identity');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
