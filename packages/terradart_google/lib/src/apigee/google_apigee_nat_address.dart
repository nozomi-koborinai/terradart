// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_nat_address`.
const Set<String> _googleApigeeNatAddressSensitive = <String>{};

/// Factory wrapper for `google_apigee_nat_address`.
///
/// Apigee NAT (network address translation) address. A NAT address is a static
/// external IP address used for Internet egress traffic. This is not avaible
/// for Apigee hybrid.
///
/// Apigee **NAT address** — northbound NAT IP on an Apigee instance.
///
/// **Cost / apply:** gcp-cost: no dedicated NAT-address SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword NAT/network → 0). billing-behavior:
/// requires a never_apply [GoogleApigeeInstance] (Gateway Node Hours
/// `0136-18C1-DD41` **$1.025/h**). Debt-only on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GoogleApigeeNatAddress extends Resource {
  static const String tfType = 'google_apigee_nat_address';

  GoogleApigeeNatAddress({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> instanceId,
    TfArg<bool>? activate,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'instance_id': instanceId,
           if (activate != null) 'activate': activate,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeNatAddressSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddressRef => TfRef.attribute<String>(this, 'ip_address');
}
