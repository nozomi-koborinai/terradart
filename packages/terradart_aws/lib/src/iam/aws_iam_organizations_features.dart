// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_organizations_features`.
const Set<String> _awsIamOrganizationsFeaturesSensitive = <String>{};

/// Iam Organizations Features Enabled enum for `enabled_features`.
enum IamOrganizationsFeaturesEnabledFeatures implements TerraformEnum {
  rootcredentialsmanagement('RootCredentialsManagement'),
  rootsessions('RootSessions');

  const IamOrganizationsFeaturesEnabledFeatures(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_iam_organizations_features`.
final class AwsIamOrganizationsFeatures extends Resource {
  static const String tfType = 'aws_iam_organizations_features';

  AwsIamOrganizationsFeatures({
    required super.localName,
    required List<TfArg<IamOrganizationsFeaturesEnabledFeatures>>
    enabledFeatures,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled_features': TfArg.literal([
             for (final e in enabledFeatures) e.toTfJson(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamOrganizationsFeaturesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamOrganizationsFeatures>`.
  RefTo<AwsIamOrganizationsFeatures> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled_features` attribute.
  TfRef<List<String>> get enabledFeatures =>
      TfRef.attribute<List<String>>(this, 'enabled_features');
}
