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

  AwsLbSslNegotiationPolicy({
    required super.localName,
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
           if (region != null) 'region': region,
           if (triggers != null) 'triggers': triggers,
           if (attribute != null)
             'attribute': TfArg.literal([
               for (final e in attribute) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbSslNegotiationPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
