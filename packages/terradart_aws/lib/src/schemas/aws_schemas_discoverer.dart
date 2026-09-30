// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_schemas_discoverer`.
const Set<String> _awsSchemasDiscovererSensitive = <String>{};

/// Factory wrapper for `aws_schemas_discoverer`.
final class AwsSchemasDiscoverer extends Resource {
  static const String tfType = 'aws_schemas_discoverer';

  AwsSchemasDiscoverer({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<String> sourceArn,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'region': ?region,
           'source_arn': sourceArn,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSchemasDiscovererSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSchemasDiscoverer>`.
  RefTo<AwsSchemasDiscoverer> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_arn` attribute.
  TfRef<String> get sourceArnRef => TfRef.attribute<String>(this, 'source_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
