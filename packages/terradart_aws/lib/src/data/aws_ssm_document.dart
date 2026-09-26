// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_document`.
const Set<String> _awsSsmDocumentSensitive = <String>{};

/// Factory wrapper for `aws_ssm_document`.
final class DataAwsSsmDocument extends Data {
  static const String tfType = 'aws_ssm_document';

  DataAwsSsmDocument({
    required super.localName,
    TfArg<String>? documentFormat,
    TfArg<String>? documentVersion,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (documentFormat != null) 'document_format': documentFormat,
           if (documentVersion != null) 'document_version': documentVersion,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmDocumentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `document_type` attribute.
  TfRef<String> get documentType =>
      TfRef.attribute<String>(this, 'document_type');
}
