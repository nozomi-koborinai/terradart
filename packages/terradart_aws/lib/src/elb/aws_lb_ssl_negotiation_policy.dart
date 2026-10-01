// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_ssl_negotiation_policy`.
const Set<String> _awsLbSslNegotiationPolicySensitive = <String>{};

/// Typed helper for the `attribute` block of
/// `aws_lb_ssl_negotiation_policy` (derived from provider schema).
@immutable
final class LbSslNegotiationPolicyAttribute {
  const LbSslNegotiationPolicyAttribute({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_lb_ssl_negotiation_policy`.
final class AwsLbSslNegotiationPolicy extends Resource {
  static const String tfType = 'aws_lb_ssl_negotiation_policy';

  AwsLbSslNegotiationPolicy(
    super.localName, {
    required TfArg<num> lbPort,
    required TfArg<String> loadBalancer,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? triggers,
    List<LbSslNegotiationPolicyAttribute>? attribute,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'lb_port': lbPort,
           'load_balancer': loadBalancer,
           'name': name,
           'region': ?region,
           'triggers': ?triggers,
           if (attribute != null)
             'attribute': TfArg.literal([
               for (final e in attribute) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbSslNegotiationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLbSslNegotiationPolicy>`.
  RefTo<AwsLbSslNegotiationPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `lb_port` attribute.
  TfRef<num> get lbPort => TfRef.attribute<num>(this, 'lb_port');

  /// Reference to `load_balancer` attribute.
  TfRef<String> get loadBalancer =>
      TfRef.attribute<String>(this, 'load_balancer');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');
}
