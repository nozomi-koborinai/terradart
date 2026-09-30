// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../workers/cloudflare_workers_script.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_script`.
const Set<String> _cloudflareWorkersScriptSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_workers_script` (derived from provider schema).
@immutable
final class DataWorkersScriptFilter {
  const DataWorkersScriptFilter({this.tags});

  final TfArg<String>? tags;

  Map<String, Object?> encode() => {'tags': ?tags?.toTfJson()};
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? scriptName,
    DataWorkersScriptFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'script_name': ?scriptName,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersScriptSensitive;

  /// A reference to the `cloudflare_workers_script` this data source reads, for
  /// arguments typed `RefTo<CloudflareWorkersScript>`.
  RefTo<CloudflareWorkersScript> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `script` attribute.
  TfRef<String> get script => TfRef.attribute<String>(this, 'script');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `script_name` attribute.
  TfRef<String> get scriptNameRef =>
      TfRef.attribute<String>(this, 'script_name');
}
