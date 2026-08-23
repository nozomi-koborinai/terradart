// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account`.
const Set<String> _cloudflareAccountSensitive = <String>{};

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
    if (abuseContactEmail != null)
      'abuse_contact_email': abuseContactEmail!.toTfJson(),
    if (enforceTwofactor != null)
      'enforce_twofactor': enforceTwofactor!.toTfJson(),
  };
}

/// Typed helper for the `unit` block of
/// `cloudflare_account` (derived from provider schema).
@immutable
final class AccountUnit {
  const AccountUnit({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {if (id != null) 'id': id!.toTfJson()};
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

  CloudflareAccount({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? type,
    AccountManagedBy? managedBy,
    AccountSettings? settings,
    AccountUnit? unit,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (type != null) 'type': type,
           if (managedBy != null)
             'managed_by': TfArg.literal(managedBy.encode()),
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
           if (unit != null) 'unit': TfArg.literal(unit.encode()),
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
}
