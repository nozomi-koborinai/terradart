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
           if (customerManagedKeyArn != null)
             'customer_managed_key_arn': customerManagedKeyArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppfabricAppBundleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
