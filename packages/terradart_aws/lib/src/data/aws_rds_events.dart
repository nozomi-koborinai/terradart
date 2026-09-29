// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_events`.
const Set<String> _awsRdsEventsSensitive = <String>{};

/// Factory wrapper for `aws_rds_events`.
final class DataAwsRdsEvents extends Data {
  static const String tfType = 'aws_rds_events';

  DataAwsRdsEvents({
    required super.localName,
    TfArg<num>? duration,
    TfArg<String>? endTime,
    TfArg<List<String>>? eventCategories,
    TfArg<String>? region,
    TfArg<String>? sourceIdentifier,
    TfArg<String>? sourceType,
    TfArg<String>? startTime,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'duration': ?duration,
           'end_time': ?endTime,
           'event_categories': ?eventCategories,
           'region': ?region,
           'source_identifier': ?sourceIdentifier,
           'source_type': ?sourceType,
           'start_time': ?startTime,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsEventsSensitive;

  /// Reference to `events` attribute.
  TfRef<List<Map<String, Object?>>> get events =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'events');
}
