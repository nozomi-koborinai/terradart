// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account`.
const Set<String> _cloudflareAccountSensitive = <String>{};

/// Account enum for `type`.
extension type const AccountType._(TfArg<String> _) implements TfArg<String> {
  AccountType.variable(String name) : this._(TfArg.variable(name));
  AccountType.expression(String template) : this._(TfArg.expression(template));
  const AccountType.arg(TfArg<String> arg) : this._(arg);

  static const standard = AccountType._(TfArgLiteral('standard'));
  static const enterprise = AccountType._(TfArgLiteral('enterprise'));

  static const List<AccountType> values = [standard, enterprise];
}

/// Typed helper for the `managed_by` block of
/// `cloudflare_account` (derived from provider schema).
@immutable
final class AccountManagedBy {
  const AccountManagedBy();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `settings` block of
/// `cloudflare_account` (derived from provider schema).
@immutable
final class AccountSettings {
  const AccountSettings({this.abuseContactEmail, this.enforceTwofactor});

  final TfArg<String>? abuseContactEmail;

  final TfArg<bool>? enforceTwofactor;

  Map<String, Object?> encode() => {
    'abuse_contact_email': ?abuseContactEmail?.toTfJson(),
    'enforce_twofactor': ?enforceTwofactor?.toTfJson(),
  };
}

/// Typed helper for the `unit` block of
/// `cloudflare_account` (derived from provider schema).
@immutable
final class AccountUnit {
  const AccountUnit({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {'id': ?id?.toTfJson()};
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
final class CloudflareAccount extends Resource {
  static const String tfType = 'cloudflare_account';

  CloudflareAccount(
    super.localName, {
    required TfArg<String> name,
    TfArg<bool>? standalone,
    AccountType? type,
    AccountManagedBy? managedBy,
    AccountSettings? settings,
    AccountUnit? unit,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'standalone': ?standalone,
           'type': ?type,
           if (managedBy != null)
             'managed_by': TfArg.literal(managedBy.encode()),
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
           if (unit != null) 'unit': TfArg.literal(unit.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAccount>`.
  RefTo<CloudflareAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `standalone` attribute.
  TfRef<bool> get standalone => TfRef.attribute<bool>(this, 'standalone');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
