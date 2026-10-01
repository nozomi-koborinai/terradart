// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssm/aws_ssm_document.dart';

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
           'document_format': ?documentFormat,
           'document_version': ?documentVersion,
           'name': name,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmDocumentSensitive;

  /// A reference to the `aws_ssm_document` this data source reads, for
  /// arguments typed `RefTo<AwsSsmDocument>`.
  RefTo<AwsSsmDocument> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `document_type` attribute.
  TfRef<String> get documentType =>
      TfRef.attribute<String>(this, 'document_type');

  /// Reference to `document_format` attribute.
  TfRef<String> get documentFormat =>
      TfRef.attribute<String>(this, 'document_format');

  /// Reference to `document_version` attribute.
  TfRef<String> get documentVersion =>
      TfRef.attribute<String>(this, 'document_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
