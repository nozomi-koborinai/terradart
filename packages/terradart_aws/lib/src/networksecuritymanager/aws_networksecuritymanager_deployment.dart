// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networksecuritymanager_deployment`.
const Set<String> _awsNetworksecuritymanagerDeploymentSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_networksecuritymanager_deployment` (derived from provider schema).
@immutable
final class NetworksecuritymanagerDeploymentConfiguration {
  const NetworksecuritymanagerDeploymentConfiguration({
    required this.enableCrossAccountVisibility,
  });

  final TfArg<bool> enableCrossAccountVisibility;

  @internal
  Map<String, Object?> encode() => {
    'enable_cross_account_visibility': enableCrossAccountVisibility.toTfJson(),
  };
}

/// Factory wrapper for `aws_networksecuritymanager_deployment`.
final class AwsNetworksecuritymanagerDeployment extends Resource {
  static const String tfType = 'aws_networksecuritymanager_deployment';

  AwsNetworksecuritymanagerDeployment(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? isPublished,
    required TfArg<String> name,
    required TfArg<List<String>> policyArns,
    TfArg<String>? region,
    required TfArg<String> scopeArn,
    TfArg<Map<String, String>>? tags,
    List<NetworksecuritymanagerDeploymentConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'is_published': ?isPublished,
           'name': name,
           'policy_arns': policyArns,
           'region': ?region,
           'scope_arn': scopeArn,
           'tags': ?tags,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworksecuritymanagerDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworksecuritymanagerDeployment>`.
  RefTo<AwsNetworksecuritymanagerDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `is_published` attribute.
  TfRef<bool> get isPublished => TfRef.attribute<bool>(this, 'is_published');

  /// Reference to `policy_arns` attribute.
  TfRef<List<String>> get policyArns =>
      TfRef.attribute<List<String>>(this, 'policy_arns');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scope_arn` attribute.
  TfRef<String> get scopeArn => TfRef.attribute<String>(this, 'scope_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
