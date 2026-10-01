// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_profile`.
const Set<String> _awsTransferProfileSensitive = <String>{};

/// Transfer Profile enum for `profile_type`.
enum TransferProfileType implements TerraformEnum {
  local('LOCAL'),
  partner('PARTNER');

  const TransferProfileType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_transfer_profile`.
final class AwsTransferProfile extends Resource {
  static const String tfType = 'aws_transfer_profile';

  AwsTransferProfile({
    required super.localName,
    required TfArg<String> as2Id,
    TfArg<List<String>>? certificateIds,
    required TfArg<TransferProfileType> profileType,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'as2_id': as2Id,
           'certificate_ids': ?certificateIds,
           'profile_type': profileType,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferProfile>`.
  RefTo<AwsTransferProfile> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');

  /// Reference to `as2_id` attribute.
  TfRef<String> get as2Id => TfRef.attribute<String>(this, 'as2_id');

  /// Reference to `certificate_ids` attribute.
  TfRef<List<String>> get certificateIds =>
      TfRef.attribute<List<String>>(this, 'certificate_ids');

  /// Reference to `profile_type` attribute.
  TfRef<String> get profileType =>
      TfRef.attribute<String>(this, 'profile_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
