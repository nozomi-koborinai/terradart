// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_access_policies`.
const Set<String> _awsEksAccessPoliciesSensitive = <String>{};

/// Factory wrapper for `aws_eks_access_policies`.
final class DataAwsEksAccessPolicies extends Data {
  static const String tfType = 'aws_eks_access_policies';

  DataAwsEksAccessPolicies({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsEksAccessPoliciesSensitive;

  /// Reference to `access_policies` attribute.
  TfRef<List<Map<String, Object?>>> get accessPolicies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_policies');
}
