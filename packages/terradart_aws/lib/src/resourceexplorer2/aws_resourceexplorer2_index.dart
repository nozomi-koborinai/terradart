// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resourceexplorer2_index`.
const Set<String> _awsResourceexplorer2IndexSensitive = <String>{};

/// Resourceexplorer2 Index enum for `type`.
enum Resourceexplorer2IndexType implements TerraformEnum {
  local('LOCAL'),
  aggregator('AGGREGATOR');

  const Resourceexplorer2IndexType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_resourceexplorer2_index`.
final class AwsResourceexplorer2Index extends Resource {
  static const String tfType = 'aws_resourceexplorer2_index';

  AwsResourceexplorer2Index(
    super.localName, {
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<Resourceexplorer2IndexType> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'tags': ?tags, 'type': type},
       );

  @override
  Set<String> get sensitiveFields => _awsResourceexplorer2IndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsResourceexplorer2Index>`.
  RefTo<AwsResourceexplorer2Index> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
