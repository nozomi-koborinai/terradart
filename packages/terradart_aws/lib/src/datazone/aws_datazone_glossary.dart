// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_glossary`.
const Set<String> _awsDatazoneGlossarySensitive = <String>{};

/// Datazone Glossary enum for `status`.
enum DatazoneGlossaryStatus implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED');

  const DatazoneGlossaryStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_datazone_glossary`.
final class AwsDatazoneGlossary extends Resource {
  static const String tfType = 'aws_datazone_glossary';

  AwsDatazoneGlossary({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> domainIdentifier,
    required TfArg<String> name,
    required TfArg<String> owningProjectIdentifier,
    TfArg<String>? region,
    TfArg<DatazoneGlossaryStatus>? status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'domain_identifier': domainIdentifier,
           'name': name,
           'owning_project_identifier': owningProjectIdentifier,
           'region': ?region,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneGlossarySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatazoneGlossary>`.
  RefTo<AwsDatazoneGlossary> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_identifier` attribute.
  TfRef<String> get domainIdentifier =>
      TfRef.attribute<String>(this, 'domain_identifier');

  /// Reference to `owning_project_identifier` attribute.
  TfRef<String> get owningProjectIdentifier =>
      TfRef.attribute<String>(this, 'owning_project_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
