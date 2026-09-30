// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_lf_tag`.
const Set<String> _awsLakeformationLfTagSensitive = <String>{};

/// Factory wrapper for `aws_lakeformation_lf_tag`.
final class AwsLakeformationLfTag extends Resource {
  static const String tfType = 'aws_lakeformation_lf_tag';

  AwsLakeformationLfTag({
    required super.localName,
    TfArg<String>? catalogId,
    required TfArg<String> key,
    TfArg<String>? region,
    required TfArg<List<String>> values,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           'key': key,
           'region': ?region,
           'values': values,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationLfTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLakeformationLfTag>`.
  RefTo<AwsLakeformationLfTag> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogIdRef => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `key` attribute.
  TfRef<String> get keyRef => TfRef.attribute<String>(this, 'key');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `values` attribute.
  TfRef<List<String>> get valuesRef =>
      TfRef.attribute<List<String>>(this, 'values');
}
