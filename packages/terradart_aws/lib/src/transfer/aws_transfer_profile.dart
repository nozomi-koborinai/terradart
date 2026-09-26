// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_profile`.
const Set<String> _awsTransferProfileSensitive = <String>{};

/// Factory wrapper for `aws_transfer_profile`.
final class AwsTransferProfile extends Resource {
  static const String tfType = 'aws_transfer_profile';

  AwsTransferProfile({
    required super.localName,
    required TfArg<String> as2Id,
    TfArg<List<String>>? certificateIds,
    required TfArg<String> profileType,
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
           if (certificateIds != null) 'certificate_ids': certificateIds,
           'profile_type': profileType,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferProfileSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `profile_id` attribute.
  TfRef<String> get profileId => TfRef.attribute<String>(this, 'profile_id');
}
