// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_load_balancer_policy`.
const Set<String> _awsLoadBalancerPolicySensitive = <String>{};

/// Typed helper for the `policy_attribute` block of
/// `aws_load_balancer_policy` (derived from provider schema).
@immutable
final class LoadBalancerPolicyPolicyAttribute {
  const LoadBalancerPolicyPolicyAttribute({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `aws_load_balancer_policy`.
final class AwsLoadBalancerPolicy extends Resource {
  static const String tfType = 'aws_load_balancer_policy';

  AwsLoadBalancerPolicy({
    required super.localName,
    required TfArg<String> loadBalancerName,
    required TfArg<String> policyName,
    required TfArg<String> policyTypeName,
    TfArg<String>? region,
    List<LoadBalancerPolicyPolicyAttribute>? policyAttribute,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'load_balancer_name': loadBalancerName,
           'policy_name': policyName,
           'policy_type_name': policyTypeName,
           'region': ?region,
           if (policyAttribute != null)
             'policy_attribute': TfArg.literal([
               for (final e in policyAttribute) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLoadBalancerPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLoadBalancerPolicy>`.
  RefTo<AwsLoadBalancerPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `load_balancer_name` attribute.
  TfRef<String> get loadBalancerNameRef =>
      TfRef.attribute<String>(this, 'load_balancer_name');

  /// Reference to `policy_name` attribute.
  TfRef<String> get policyNameRef =>
      TfRef.attribute<String>(this, 'policy_name');

  /// Reference to `policy_type_name` attribute.
  TfRef<String> get policyTypeNameRef =>
      TfRef.attribute<String>(this, 'policy_type_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
