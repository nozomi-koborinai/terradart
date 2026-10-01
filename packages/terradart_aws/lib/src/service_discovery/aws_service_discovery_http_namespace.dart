// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_discovery_http_namespace`.
const Set<String> _awsServiceDiscoveryHttpNamespaceSensitive = <String>{};

/// Factory wrapper for `aws_service_discovery_http_namespace`.
final class AwsServiceDiscoveryHttpNamespace extends Resource {
  static const String tfType = 'aws_service_discovery_http_namespace';

  AwsServiceDiscoveryHttpNamespace(
    super.localName, {
    TfArg<String>? description,
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
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServiceDiscoveryHttpNamespaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServiceDiscoveryHttpNamespace>`.
  RefTo<AwsServiceDiscoveryHttpNamespace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `http_name` attribute.
  TfRef<String> get httpName => TfRef.attribute<String>(this, 'http_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
