// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmcontacts_rotation`.
const Set<String> _awsSsmcontactsRotationSensitive = <String>{};

/// Factory wrapper for `aws_ssmcontacts_rotation`.
final class DataAwsSsmcontactsRotation extends Data {
  static const String tfType = 'aws_ssmcontacts_rotation';

  DataAwsSsmcontactsRotation({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': arn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsRotationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `contact_ids` attribute.
  TfRef<List<String>> get contactIds =>
      TfRef.attribute<List<String>>(this, 'contact_ids');

  /// Reference to `recurrence` attribute.
  TfRef<List<Map<String, Object?>>> get recurrence =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'recurrence');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_zone_id` attribute.
  TfRef<String> get timeZoneId => TfRef.attribute<String>(this, 'time_zone_id');
}
