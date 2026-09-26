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
           if (description != null) 'description': description,
           'local_profile_id': localProfileId,
           'partner_profile_id': partnerProfileId,
           if (region != null) 'region': region,
           'server_id': serverId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferAgreementSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agreement_id` attribute.
  TfRef<String> get agreementId =>
      TfRef.attribute<String>(this, 'agreement_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
