// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account`.
const Set<String> _cloudflareAccountSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_account` (derived from provider schema).
@immutable
final class DataAccountFilter {
  const DataAccountFilter({this.direction, this.name});

  final TfArg<String>? direction;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_account`.
///
/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read` - `Account Firewall Access Rules
/// Write` - `Account Settings Read` - `Account Settings Write` - `Billing Read`
/// - `Billing Write` - `DDoS Botnet Feed Read` - `DDoS Botnet Feed Write` -
/// `DDoS Protection Read` - `DDoS Protection Write` - `DNS Firewall Read` -
/// `DNS Firewall Write` - `DNS View Read` - `DNS View Write` - `Load Balancers
/// Account Read` - `Load Balancers Account Write` - `Load Balancing: Monitors
/// and Pools Read` - `Load Balancing: Monitors and Pools Write` - `SCIM
/// Provisioning` - `Trust and Safety Read` - `Trust and Safety Write` -
/// `Workers KV Storage Read` - `Workers KV Storage Write` - `Workers R2 Storage
/// Read` - `Workers R2 Storage Write` - `Workers Scripts Read` - `Workers
/// Scripts Write` - `Workers Tail Read` - `Zero Trust: PII Read`
final class DataCloudflareAccount extends Data {
  static const String tfType = 'cloudflare_account';

  DataCloudflareAccount({
    required super.localName,
    TfArg<String>? accountId,
    DataAccountFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
