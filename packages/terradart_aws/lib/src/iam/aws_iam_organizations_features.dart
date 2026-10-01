// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_organizations_features`.
const Set<String> _awsIamOrganizationsFeaturesSensitive = <String>{};

/// Iam Organizations Features Enabled enum for `enabled_features`.
extension type const IamOrganizationsFeaturesEnabledFeatures._(TfArg<String> _)
    implements TfArg<String> {
  IamOrganizationsFeaturesEnabledFeatures.variable(String name)
    : this._(TfArg.variable(name));
  IamOrganizationsFeaturesEnabledFeatures.expression(String template)
    : this._(TfArg.expression(template));
  const IamOrganizationsFeaturesEnabledFeatures.arg(TfArg<String> arg)
    : this._(arg);

  static const rootcredentialsmanagement =
      IamOrganizationsFeaturesEnabledFeatures._(
        TfArgLiteral('RootCredentialsManagement'),
      );
  static const rootsessions = IamOrganizationsFeaturesEnabledFeatures._(
    TfArgLiteral('RootSessions'),
  );

  static const List<IamOrganizationsFeaturesEnabledFeatures> values = [
    rootcredentialsmanagement,
    rootsessions,
  ];
}

/// Factory wrapper for `aws_iam_organizations_features`.
final class AwsIamOrganizationsFeatures extends Resource {
  static const String tfType = 'aws_iam_organizations_features';

  AwsIamOrganizationsFeatures(
    super.localName, {
    required List<IamOrganizationsFeaturesEnabledFeatures> enabledFeatures,
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
