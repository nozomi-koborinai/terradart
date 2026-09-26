// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dataexchange_revision`.
const Set<String> _awsDataexchangeRevisionSensitive = <String>{};

/// Factory wrapper for `aws_dataexchange_revision`.
final class AwsDataexchangeRevision extends Resource {
  static const String tfType = 'aws_dataexchange_revision';

  AwsDataexchangeRevision({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> dataSetId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'data_set_id': dataSetId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDataexchangeRevisionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');
}
