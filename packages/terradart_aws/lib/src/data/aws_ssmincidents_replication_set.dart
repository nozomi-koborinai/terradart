// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmincidents_replication_set`.
const Set<String> _awsSsmincidentsReplicationSetSensitive = <String>{};

/// Factory wrapper for `aws_ssmincidents_replication_set`.
final class DataAwsSsmincidentsReplicationSet extends Data {
  static const String tfType = 'aws_ssmincidents_replication_set';

  DataAwsSsmincidentsReplicationSet({
    required super.localName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {if (tags != null) 'tags': tags});

  @override
  Set<String> get sensitiveFields => _awsSsmincidentsReplicationSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `deletion_protected` attribute.
  TfRef<bool> get deletionProtected =>
      TfRef.attribute<bool>(this, 'deletion_protected');

  /// Reference to `last_modified_by` attribute.
  TfRef<String> get lastModifiedBy =>
      TfRef.attribute<String>(this, 'last_modified_by');

  /// Reference to `region` attribute.
  TfRef<List<Map<String, Object?>>> get region =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'region');

  /// Reference to `regions` attribute.
  TfRef<List<Map<String, Object?>>> get regions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'regions');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
