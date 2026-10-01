// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_glossary`.
const Set<String> _awsDatazoneGlossarySensitive = <String>{};

/// Datazone Glossary enum for `status`.
extension type const DatazoneGlossaryStatus._(TfArg<String> _)
    implements TfArg<String> {
  DatazoneGlossaryStatus.variable(String name) : this._(TfArg.variable(name));
  DatazoneGlossaryStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DatazoneGlossaryStatus.arg(TfArg<String> arg) : this._(arg);

  static const disabled = DatazoneGlossaryStatus._(TfArgLiteral('DISABLED'));
  static const enabled = DatazoneGlossaryStatus._(TfArgLiteral('ENABLED'));

  static const List<DatazoneGlossaryStatus> values = [disabled, enabled];
}

/// Factory wrapper for `aws_datazone_glossary`.
final class AwsDatazoneGlossary extends Resource {
  static const String tfType = 'aws_datazone_glossary';

  AwsDatazoneGlossary(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> domainIdentifier,
    required TfArg<String> name,
    required TfArg<String> owningProjectIdentifier,
    TfArg<String>? region,
    DatazoneGlossaryStatus? status,
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
