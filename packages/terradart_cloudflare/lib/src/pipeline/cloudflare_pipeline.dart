// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pipeline`.
const Set<String> _cloudflarePipelineSensitive = <String>{};

/// Factory wrapper for `cloudflare_pipeline`.
///
/// Accepted Permissions
///
/// - `Pipelines Read` - `Pipelines Write`
final class CloudflarePipeline extends Resource {
  static const String tfType = 'cloudflare_pipeline';

  CloudflarePipeline({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    required TfArg<String> sql,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'name': name, 'sql': sql},
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePipelineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
