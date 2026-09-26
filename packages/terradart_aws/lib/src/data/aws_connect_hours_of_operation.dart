// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_hours_of_operation`.
const Set<String> _awsConnectHoursOfOperationSensitive = <String>{};

/// Factory wrapper for `aws_connect_hours_of_operation`.
final class DataAwsConnectHoursOfOperation extends Data {
  static const String tfType = 'aws_connect_hours_of_operation';

  DataAwsConnectHoursOfOperation({
    required super.localName,
    TfArg<String>? hoursOfOperationId,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (hoursOfOperationId != null)
             'hours_of_operation_id': hoursOfOperationId,
           'instance_id': instanceId,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectHoursOfOperationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `config` attribute.
  TfRef<List<Map<String, Object?>>> get config =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'config');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');
}
