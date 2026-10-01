// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../workflow/cloudflare_workflow.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workflow`.
const Set<String> _cloudflareWorkflowSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_workflow` (derived from provider schema).
@immutable
final class DataWorkflowFilter {
  const DataWorkflowFilter({this.search});

  final TfArg<String>? search;

  Map<String, Object?> encode() => {'search': ?search?.toTfJson()};
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? workflowName,
    DataWorkflowFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'workflow_name': ?workflowName,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkflowSensitive;

  /// A reference to the `cloudflare_workflow` this data source reads, for
  /// arguments typed `RefTo<CloudflareWorkflow>`.
  RefTo<CloudflareWorkflow> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `class_name` attribute.
  TfRef<String> get className => TfRef.attribute<String>(this, 'class_name');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `instances` attribute.
  TfRef<Map<String, num>> get instances =>
      TfRef.attribute<Map<String, num>>(this, 'instances');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `script_deleted` attribute.
  TfRef<bool> get scriptDeleted =>
      TfRef.attribute<bool>(this, 'script_deleted');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptName => TfRef.attribute<String>(this, 'script_name');

  /// Reference to `triggered_on` attribute.
  TfRef<String> get triggeredOn =>
      TfRef.attribute<String>(this, 'triggered_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `workflow_name` attribute.
  TfRef<String> get workflowName =>
      TfRef.attribute<String>(this, 'workflow_name');
}
