// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../datapipeline/aws_datapipeline_pipeline.dart';

/// Sensitive field paths for `aws_datapipeline_pipeline`.
const Set<String> _awsDatapipelinePipelineSensitive = <String>{};

/// Factory wrapper for `aws_datapipeline_pipeline`.
final class DataAwsDatapipelinePipeline extends Data {
  static const String tfType = 'aws_datapipeline_pipeline';

  DataAwsDatapipelinePipeline({
    required super.localName,
    required TfArg<String> pipelineId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'pipeline_id': pipelineId, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsDatapipelinePipelineSensitive;

  /// A reference to the `aws_datapipeline_pipeline` this data source reads, for
  /// arguments typed `RefTo<AwsDatapipelinePipeline>`.
  RefTo<AwsDatapipelinePipeline> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
