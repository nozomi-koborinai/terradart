// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_network_insights_path`.
const Set<String> _awsEc2NetworkInsightsPathSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_network_insights_path` (derived from provider schema).
@immutable
final class DataEc2NetworkInsightsPathFilter {
  const DataEc2NetworkInsightsPathFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_network_insights_path`.
final class DataAwsEc2NetworkInsightsPath extends Data {
  static const String tfType = 'aws_ec2_network_insights_path';

  DataAwsEc2NetworkInsightsPath({
    required super.localName,
    TfArg<String>? networkInsightsPathId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2NetworkInsightsPathFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (networkInsightsPathId != null)
             'network_insights_path_id': networkInsightsPathId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2NetworkInsightsPathSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `destination_arn` attribute.
  TfRef<String> get destinationArn =>
      TfRef.attribute<String>(this, 'destination_arn');

  /// Reference to `destination_ip` attribute.
  TfRef<String> get destinationIp =>
      TfRef.attribute<String>(this, 'destination_ip');

  /// Reference to `destination_port` attribute.
  TfRef<num> get destinationPort =>
      TfRef.attribute<num>(this, 'destination_port');

  /// Reference to `filter_at_destination` attribute.
  TfRef<List<Map<String, Object?>>> get filterAtDestination =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'filter_at_destination',
      );

  /// Reference to `filter_at_source` attribute.
  TfRef<List<Map<String, Object?>>> get filterAtSource =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'filter_at_source');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_arn` attribute.
  TfRef<String> get sourceArn => TfRef.attribute<String>(this, 'source_arn');

  /// Reference to `source_ip` attribute.
  TfRef<String> get sourceIp => TfRef.attribute<String>(this, 'source_ip');
}
