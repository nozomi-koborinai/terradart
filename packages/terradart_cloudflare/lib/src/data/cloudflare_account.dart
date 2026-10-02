// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart';

/// Sensitive field paths for `cloudflare_account`.
const Set<String> _cloudflareAccountSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_account` (derived from provider schema).
@immutable
final class DataAccountFilter {
  const DataAccountFilter({this.direction, this.name});

  final DataAccountDirection? direction;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataAccountDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountDirection.variable(String name) : this._(TfArg.variable(name));
  DataAccountDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataAccountDirection._(TfArgLiteral('asc'));
  static const desc = DataAccountDirection._(TfArgLiteral('desc'));

  static const List<DataAccountDirection> values = [asc, desc];
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

  DataCloudflareAccount(
    super.localName, {
    TfArg<String>? accountId,
    DataAccountFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountSensitive;

  /// A reference to the `cloudflare_account` this data source reads, for
  /// arguments typed `RefTo<CloudflareAccount>`.
  RefTo<CloudflareAccount> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
