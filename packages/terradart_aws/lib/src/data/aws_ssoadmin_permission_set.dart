// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssoadmin/aws_ssoadmin_permission_set.dart';

/// Sensitive field paths for `aws_ssoadmin_permission_set`.
const Set<String> _awsSsoadminPermissionSetSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_permission_set`.
final class DataAwsSsoadminPermissionSet extends Data {
  static const String tfType = 'aws_ssoadmin_permission_set';

  DataAwsSsoadminPermissionSet({
    required super.localName,
    TfArg<String>? arn,
    required TfArg<String> instanceArn,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': ?arn,
           'instance_arn': instanceArn,
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminPermissionSetSensitive;

  /// A reference to the `aws_ssoadmin_permission_set` this data source reads, for
  /// arguments typed `RefTo<AwsSsoadminPermissionSet>`.
  RefTo<AwsSsoadminPermissionSet> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `relay_state` attribute.
  TfRef<String> get relayState => TfRef.attribute<String>(this, 'relay_state');

  /// Reference to `session_duration` attribute.
  TfRef<String> get sessionDuration =>
      TfRef.attribute<String>(this, 'session_duration');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArn =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
