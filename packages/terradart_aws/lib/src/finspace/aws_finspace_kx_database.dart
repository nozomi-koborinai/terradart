// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_database`.
const Set<String> _awsFinspaceKxDatabaseSensitive = <String>{};

/// Factory wrapper for `aws_finspace_kx_database`.
final class AwsFinspaceKxDatabase extends Resource {
  static const String tfType = 'aws_finspace_kx_database';

  AwsFinspaceKxDatabase({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> environmentId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'environment_id': environmentId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFinspaceKxDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFinspaceKxDatabase>`.
  RefTo<AwsFinspaceKxDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_modified_timestamp` attribute.
  TfRef<String> get lastModifiedTimestamp =>
      TfRef.attribute<String>(this, 'last_modified_timestamp');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentIdRef =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
