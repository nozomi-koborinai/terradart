// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_network_insights_analysis`.
const Set<String> _awsEc2NetworkInsightsAnalysisSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_network_insights_analysis` (derived from provider schema).
@immutable
final class DataEc2NetworkInsightsAnalysisFilter {
  const DataEc2NetworkInsightsAnalysisFilter({
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

/// Factory wrapper for `aws_ec2_network_insights_analysis`.
final class DataAwsEc2NetworkInsightsAnalysis extends Data {
  static const String tfType = 'aws_ec2_network_insights_analysis';

  DataAwsEc2NetworkInsightsAnalysis({
    required super.localName,
    TfArg<String>? networkInsightsAnalysisId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2NetworkInsightsAnalysisFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (networkInsightsAnalysisId != null)
             'network_insights_analysis_id': networkInsightsAnalysisId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2NetworkInsightsAnalysisSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alternate_path_hints` attribute.
  TfRef<List<Map<String, Object?>>> get alternatePathHints =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'alternate_path_hints');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `explanations` attribute.
  TfRef<List<Map<String, Object?>>> get explanations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'explanations');

  /// Reference to `filter_in_arns` attribute.
  TfRef<List<String>> get filterInArns =>
      TfRef.attribute<List<String>>(this, 'filter_in_arns');

  /// Reference to `forward_path_components` attribute.
  TfRef<List<Map<String, Object?>>> get forwardPathComponents =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'forward_path_components',
      );

  /// Reference to `network_insights_path_id` attribute.
  TfRef<String> get networkInsightsPathId =>
      TfRef.attribute<String>(this, 'network_insights_path_id');

  /// Reference to `path_found` attribute.
  TfRef<bool> get pathFound => TfRef.attribute<bool>(this, 'path_found');

  /// Reference to `return_path_components` attribute.
  TfRef<List<Map<String, Object?>>> get returnPathComponents =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'return_path_components',
      );

  /// Reference to `start_date` attribute.
  TfRef<String> get startDate => TfRef.attribute<String>(this, 'start_date');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `warning_message` attribute.
  TfRef<String> get warningMessage =>
      TfRef.attribute<String>(this, 'warning_message');
}
