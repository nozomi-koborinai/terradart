// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_agreement`.
const Set<String> _awsTransferAgreementSensitive = <String>{};

/// Factory wrapper for `aws_transfer_agreement`.
final class AwsTransferAgreement extends Resource {
  static const String tfType = 'aws_transfer_agreement';

  AwsTransferAgreement({
    required super.localName,
    required TfArg<String> accessRole,
    required TfArg<String> baseDirectory,
    TfArg<String>? description,
    required TfArg<String> localProfileId,
    required TfArg<String> partnerProfileId,
    TfArg<String>? region,
    required TfArg<String> serverId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_role': accessRole,
           'base_directory': baseDirectory,
           'description': ?description,
           'local_profile_id': localProfileId,
           'partner_profile_id': partnerProfileId,
           'region': ?region,
           'server_id': serverId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferAgreementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferAgreement>`.
  RefTo<AwsTransferAgreement> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agreement_id` attribute.
  TfRef<String> get agreementId =>
      TfRef.attribute<String>(this, 'agreement_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `access_role` attribute.
  TfRef<String> get accessRole => TfRef.attribute<String>(this, 'access_role');

  /// Reference to `base_directory` attribute.
  TfRef<String> get baseDirectory =>
      TfRef.attribute<String>(this, 'base_directory');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `local_profile_id` attribute.
  TfRef<String> get localProfileId =>
      TfRef.attribute<String>(this, 'local_profile_id');

  /// Reference to `partner_profile_id` attribute.
  TfRef<String> get partnerProfileId =>
      TfRef.attribute<String>(this, 'partner_profile_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
