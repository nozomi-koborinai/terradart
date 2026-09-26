// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_human_task_ui`.
const Set<String> _awsSagemakerHumanTaskUiSensitive = <String>{};

/// Typed helper for the `ui_template` block of
/// `aws_sagemaker_human_task_ui` (derived from provider schema).
@immutable
final class SagemakerHumanTaskUiUiTemplate {
  const SagemakerHumanTaskUiUiTemplate({this.content});

  final TfArg<String>? content;

  Map<String, Object?> encode() => {
    if (content != null) 'content': content!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_human_task_ui`.
final class AwsSagemakerHumanTaskUi extends Resource {
  static const String tfType = 'aws_sagemaker_human_task_ui';

  AwsSagemakerHumanTaskUi({
    required super.localName,
    required TfArg<String> humanTaskUiName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required SagemakerHumanTaskUiUiTemplate uiTemplate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'human_task_ui_name': humanTaskUiName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'ui_template': TfArg.literal(uiTemplate.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerHumanTaskUiSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
