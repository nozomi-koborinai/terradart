// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_organizations_features`.
const Set<String> _awsIamOrganizationsFeaturesSensitive = <String>{};

/// Factory wrapper for `aws_iam_organizations_features`.
final class AwsIamOrganizationsFeatures extends Resource {
  static const String tfType = 'aws_iam_organizations_features';

  AwsIamOrganizationsFeatures({
    required super.localName,
    required TfArg<List<String>> enabledFeatures,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled_features': enabledFeatures},
       );

  @override
  Set<String> get sensitiveFields => _awsIamOrganizationsFeaturesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
