// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_detective_graph`.
const Set<String> _awsDetectiveGraphSensitive = <String>{};

/// Factory wrapper for `aws_detective_graph`.
final class AwsDetectiveGraph extends Resource {
  static const String tfType = 'aws_detective_graph';

  AwsDetectiveGraph({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDetectiveGraphSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `graph_arn` attribute.
  TfRef<String> get graphArn => TfRef.attribute<String>(this, 'graph_arn');
}
