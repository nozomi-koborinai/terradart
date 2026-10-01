// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../route53/aws_route53_zone.dart' show AwsRoute53Zone;

/// Sensitive field paths for `aws_route53_records`.
const Set<String> _awsRoute53RecordsSensitive = <String>{};

/// Factory wrapper for `aws_route53_records`.
final class DataAwsRoute53Records extends Data {
  static const String tfType = 'aws_route53_records';

  DataAwsRoute53Records({
    required super.localName,
    TfArg<String>? nameRegex,
    required RefTo<AwsRoute53Zone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name_regex': ?nameRegex,
           'zone_id': zoneId.encodeAs('zone_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53RecordsSensitive;

  /// Reference to `resource_record_sets` attribute.
  TfRef<List<Map<String, Object?>>> get resourceRecordSets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_record_sets');

  /// Reference to `name_regex` attribute.
  TfRef<String> get nameRegexRef => TfRef.attribute<String>(this, 'name_regex');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
