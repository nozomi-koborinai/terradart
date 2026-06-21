// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_data_collector`.
const Set<String> _googleApigeeDataCollectorSensitive = <String>{};

/// Data type collected by `google_apigee_data_collector`.
enum ApigeeDataCollectorType implements TerraformEnum {
  boolean('BOOLEAN'),
  dateTime('DATETIME'),
  floatType('FLOAT'),
  integer('INTEGER'),
  string('STRING');

  const ApigeeDataCollectorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Terraform `deletion_policy` for Apigee data collectors.
enum ApigeeDataCollectorDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  abandon('ABANDON');

  const ApigeeDataCollectorDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_apigee_data_collector`.
final class GoogleApigeeDataCollector extends Resource {
  static const String tfType = 'google_apigee_data_collector';

  GoogleApigeeDataCollector({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> dataCollectorId,
    required TfArg<ApigeeDataCollectorType> type,
    TfArg<String>? description,
    TfArg<ApigeeDataCollectorDeletionPolicy>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'data_collector_id': dataCollectorId,
           'type': type,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeDataCollectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified_at` attribute.
  TfRef<String> get lastModifiedAt =>
      TfRef.attribute<String>(this, 'last_modified_at');
}
