// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_studio_session_mapping`.
const Set<String> _awsEmrStudioSessionMappingSensitive = <String>{};

/// Factory wrapper for `aws_emr_studio_session_mapping`.
final class AwsEmrStudioSessionMapping extends Resource {
  static const String tfType = 'aws_emr_studio_session_mapping';

  AwsEmrStudioSessionMapping({
    required super.localName,
    TfArg<String>? identityId,
    TfArg<String>? identityName,
    required TfArg<String> identityType,
    TfArg<String>? region,
    required TfArg<String> sessionPolicyArn,
    required TfArg<String> studioId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (identityId != null) 'identity_id': identityId,
           if (identityName != null) 'identity_name': identityName,
           'identity_type': identityType,
           if (region != null) 'region': region,
           'session_policy_arn': sessionPolicyArn,
           'studio_id': studioId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrStudioSessionMappingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
