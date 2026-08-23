// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_script`.
const Set<String> _cloudflareWorkersScriptSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class DataWorkersScriptFilter {
  const DataWorkersScriptFilter({this.tags});

  final TfArg<String>? tags;

  Map<String, Object?> encode() => {if (tags != null) 'tags': tags!.toTfJson()};
}

/// Factory wrapper for `cloudflare_workers_script`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkersScript extends Data {
  static const String tfType = 'cloudflare_workers_script';

  DataCloudflareWorkersScript({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? scriptName,
    DataWorkersScriptFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (scriptName != null) 'script_name': scriptName,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersScriptSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `script` attribute.
  TfRef<String> get script => TfRef.attribute<String>(this, 'script');
}
