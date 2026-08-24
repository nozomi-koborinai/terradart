// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workflow`.
const Set<String> _cloudflareWorkflowSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_workflow` (derived from provider schema).
@immutable
final class DataWorkflowFilter {
  const DataWorkflowFilter({this.search});

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    if (search != null) 'search': search!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_workflow`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkflow extends Data {
  static const String tfType = 'cloudflare_workflow';

  DataCloudflareWorkflow({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? workflowName,
    DataWorkflowFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (workflowName != null) 'workflow_name': workflowName,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkflowSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `class_name` attribute.
  TfRef<String> get className => TfRef.attribute<String>(this, 'class_name');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptName => TfRef.attribute<String>(this, 'script_name');

  /// Reference to `triggered_on` attribute.
  TfRef<String> get triggeredOn =>
      TfRef.attribute<String>(this, 'triggered_on');
}
