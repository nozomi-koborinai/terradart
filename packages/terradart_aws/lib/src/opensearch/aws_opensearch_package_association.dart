// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearch_package_association`.
const Set<String> _awsOpensearchPackageAssociationSensitive = <String>{};

/// Factory wrapper for `aws_opensearch_package_association`.
final class AwsOpensearchPackageAssociation extends Resource {
  static const String tfType = 'aws_opensearch_package_association';

  AwsOpensearchPackageAssociation({
    required super.localName,
    required TfArg<String> domainName,
    required TfArg<String> packageId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'package_id': packageId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOpensearchPackageAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `reference_path` attribute.
  TfRef<String> get referencePath =>
      TfRef.attribute<String>(this, 'reference_path');
}
