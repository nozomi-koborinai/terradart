// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_permission_set`.
const Set<String> _awsSsoadminPermissionSetSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_permission_set`.
final class AwsSsoadminPermissionSet extends Resource {
  static const String tfType = 'aws_ssoadmin_permission_set';

  AwsSsoadminPermissionSet({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> instanceArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? relayState,
    TfArg<String>? sessionDuration,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'instance_arn': instanceArn,
           'name': name,
           if (region != null) 'region': region,
           if (relayState != null) 'relay_state': relayState,
           if (sessionDuration != null) 'session_duration': sessionDuration,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminPermissionSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');
}
