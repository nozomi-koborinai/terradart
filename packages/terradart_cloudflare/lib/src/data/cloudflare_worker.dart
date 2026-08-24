// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_worker`.
const Set<String> _cloudflareWorkerSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class DataWorkerFilter {
  const DataWorkerFilter({this.order, this.orderBy});

  final TfArg<String>? order;

  final TfArg<String>? orderBy;

  Map<String, Object?> encode() => {
    if (order != null) 'order': order!.toTfJson(),
    if (orderBy != null) 'order_by': orderBy!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_worker`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorker extends Data {
  static const String tfType = 'cloudflare_worker';

  DataCloudflareWorker({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? workerId,
    DataWorkerFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (workerId != null) 'worker_id': workerId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `deployed_on` attribute.
  TfRef<String> get deployedOn => TfRef.attribute<String>(this, 'deployed_on');

  /// Reference to `logpush` attribute.
  TfRef<bool> get logpush => TfRef.attribute<bool>(this, 'logpush');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `updated_on` attribute.
  TfRef<String> get updatedOn => TfRef.attribute<String>(this, 'updated_on');
}
