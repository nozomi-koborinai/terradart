// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appfabric_app_bundle`.
const Set<String> _awsAppfabricAppBundleSensitive = <String>{};

/// Factory wrapper for `aws_appfabric_app_bundle`.
final class AwsAppfabricAppBundle extends Resource {
  static const String tfType = 'aws_appfabric_app_bundle';

  AwsAppfabricAppBundle({
    required super.localName,
    TfArg<String>? customerManagedKeyArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_managed_key_arn': ?customerManagedKeyArn,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppfabricAppBundleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppfabricAppBundle>`.
  RefTo<AwsAppfabricAppBundle> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `customer_managed_key_arn` attribute.
  TfRef<String> get customerManagedKeyArnRef =>
      TfRef.attribute<String>(this, 'customer_managed_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
