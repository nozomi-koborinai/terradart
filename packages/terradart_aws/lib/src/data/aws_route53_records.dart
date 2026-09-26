// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_records`.
const Set<String> _awsRoute53RecordsSensitive = <String>{};

/// Factory wrapper for `aws_route53_records`.
final class DataAwsRoute53Records extends Data {
  static const String tfType = 'aws_route53_records';

  DataAwsRoute53Records({
    required super.localName,
    TfArg<String>? nameRegex,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (nameRegex != null) 'name_regex': nameRegex,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53RecordsSensitive;

  /// Reference to `resource_record_sets` attribute.
  TfRef<List<Map<String, Object?>>> get resourceRecordSets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_record_sets');
}
