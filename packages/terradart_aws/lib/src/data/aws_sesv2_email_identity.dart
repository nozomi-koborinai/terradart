// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../sesv2/aws_sesv2_email_identity.dart';

/// Sensitive field paths for `aws_sesv2_email_identity`.
const Set<String> _awsSesv2EmailIdentitySensitive = <String>{};

/// Factory wrapper for `aws_sesv2_email_identity`.
final class DataAwsSesv2EmailIdentity extends Data {
  static const String tfType = 'aws_sesv2_email_identity';

  DataAwsSesv2EmailIdentity({
    required super.localName,
    required TfArg<String> emailIdentity,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'email_identity': emailIdentity,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2EmailIdentitySensitive;

  /// A reference to the `aws_sesv2_email_identity` this data source reads, for
  /// arguments typed `RefTo<AwsSesv2EmailIdentity>`.
  RefTo<AwsSesv2EmailIdentity> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration_set_name` attribute.
  TfRef<String> get configurationSetName =>
      TfRef.attribute<String>(this, 'configuration_set_name');

  /// Reference to `dkim_signing_attributes` attribute.
  TfRef<List<Map<String, Object?>>> get dkimSigningAttributes =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'dkim_signing_attributes',
      );

  /// Reference to `identity_type` attribute.
  TfRef<String> get identityType =>
      TfRef.attribute<String>(this, 'identity_type');

  /// Reference to `verification_status` attribute.
  TfRef<String> get verificationStatus =>
      TfRef.attribute<String>(this, 'verification_status');

  /// Reference to `verified_for_sending_status` attribute.
  TfRef<bool> get verifiedForSendingStatus =>
      TfRef.attribute<bool>(this, 'verified_for_sending_status');

  /// Reference to `email_identity` attribute.
  TfRef<String> get emailIdentityRef =>
      TfRef.attribute<String>(this, 'email_identity');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
