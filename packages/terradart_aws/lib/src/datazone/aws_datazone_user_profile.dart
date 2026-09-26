// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_user_profile`.
const Set<String> _awsDatazoneUserProfileSensitive = <String>{};

/// Factory wrapper for `aws_datazone_user_profile`.
final class AwsDatazoneUserProfile extends Resource {
  static const String tfType = 'aws_datazone_user_profile';

  AwsDatazoneUserProfile({
    required super.localName,
    required TfArg<String> domainIdentifier,
    TfArg<String>? region,
    TfArg<String>? status,
    required TfArg<String> userIdentifier,
    TfArg<String>? userType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_identifier': domainIdentifier,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
           'user_identifier': userIdentifier,
           if (userType != null) 'user_type': userType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneUserProfileSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `details` attribute.
  TfRef<List<Map<String, Object?>>> get details =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'details');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
