// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_namespace`.
const Set<String> _awsQuicksightNamespaceSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_namespace`.
final class AwsQuicksightNamespace extends Resource {
  static const String tfType = 'aws_quicksight_namespace';

  AwsQuicksightNamespace(
    super.localName, {
    TfArg<String>? awsAccountId,
    TfArg<String>? identityStore,
    required TfArg<String> namespace,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'identity_store': ?identityStore,
           'namespace': namespace,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightNamespace>`.
  RefTo<AwsQuicksightNamespace> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `capacity_region` attribute.
  TfRef<String> get capacityRegion =>
      TfRef.attribute<String>(this, 'capacity_region');

  /// Reference to `creation_status` attribute.
  TfRef<String> get creationStatus =>
      TfRef.attribute<String>(this, 'creation_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `identity_store` attribute.
  TfRef<String> get identityStore =>
      TfRef.attribute<String>(this, 'identity_store');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
