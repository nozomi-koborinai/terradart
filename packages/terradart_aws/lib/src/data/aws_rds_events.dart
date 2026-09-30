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

  /// Reference to `duration` attribute.
  TfRef<num> get durationRef => TfRef.attribute<num>(this, 'duration');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTimeRef => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `event_categories` attribute.
  TfRef<List<String>> get eventCategoriesRef =>
      TfRef.attribute<List<String>>(this, 'event_categories');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_identifier` attribute.
  TfRef<String> get sourceIdentifierRef =>
      TfRef.attribute<String>(this, 'source_identifier');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceTypeRef =>
      TfRef.attribute<String>(this, 'source_type');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTimeRef => TfRef.attribute<String>(this, 'start_time');
}
