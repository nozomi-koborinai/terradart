// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_workflow`.
const Set<String> _awsImagebuilderWorkflowSensitive = <String>{};

/// Factory wrapper for `aws_imagebuilder_workflow`.
final class AwsImagebuilderWorkflow extends Resource {
  static const String tfType = 'aws_imagebuilder_workflow';

  AwsImagebuilderWorkflow({
    required super.localName,
    TfArg<String>? changeDescription,
    TfArg<String>? data,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    TfArg<String>? uri,
    required TfArg<String> version,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (changeDescription != null)
             'change_description': changeDescription,
           if (data != null) 'data': data,
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
           if (uri != null) 'uri': uri,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderWorkflowSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');
}
