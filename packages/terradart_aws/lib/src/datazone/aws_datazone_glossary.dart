// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_glossary`.
const Set<String> _awsDatazoneGlossarySensitive = <String>{};

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
    TfArg<String>? status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'domain_identifier': domainIdentifier,
           'name': name,
           'owning_project_identifier': owningProjectIdentifier,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneGlossarySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
