// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_evidently_segment`.
const Set<String> _awsEvidentlySegmentSensitive = <String>{};

/// Factory wrapper for `aws_evidently_segment`.
final class AwsEvidentlySegment extends Resource {
  static const String tfType = 'aws_evidently_segment';

  AwsEvidentlySegment({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> pattern,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           'pattern': pattern,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEvidentlySegmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `experiment_count` attribute.
  TfRef<num> get experimentCount =>
      TfRef.attribute<num>(this, 'experiment_count');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `launch_count` attribute.
  TfRef<num> get launchCount => TfRef.attribute<num>(this, 'launch_count');
}
