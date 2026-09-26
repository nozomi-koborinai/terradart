// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_delegation_set`.
const Set<String> _awsRoute53DelegationSetSensitive = <String>{};

/// Factory wrapper for `aws_route53_delegation_set`.
final class DataAwsRoute53DelegationSet extends Data {
  static const String tfType = 'aws_route53_delegation_set';

  DataAwsRoute53DelegationSet({
    required super.localName,
    required TfArg<String> id,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'id': id});

  @override
  Set<String> get sensitiveFields => _awsRoute53DelegationSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `caller_reference` attribute.
  TfRef<String> get callerReference =>
      TfRef.attribute<String>(this, 'caller_reference');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');
}
