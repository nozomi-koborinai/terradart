// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../elb/aws_lb_trust_store.dart';

/// Sensitive field paths for `aws_lb_trust_store`.
const Set<String> _awsLbTrustStoreSensitive = <String>{};

/// Factory wrapper for `aws_lb_trust_store`.
final class DataAwsLbTrustStore extends Data {
  static const String tfType = 'aws_lb_trust_store';

  DataAwsLbTrustStore({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': ?arn, 'name': ?name, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsLbTrustStoreSensitive;

  /// A reference to the `aws_lb_trust_store` this data source reads, for
  /// arguments typed `RefTo<AwsLbTrustStore>`.
  RefTo<AwsLbTrustStore> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
