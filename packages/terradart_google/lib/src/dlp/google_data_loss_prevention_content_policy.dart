// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_loss_prevention_content_policy`.
const Set<String> _googleDataLossPreventionContentPolicySensitive = <String>{};

/// Factory wrapper for `google_data_loss_prevention_content_policy`.
///
/// A policy to apply to content based on its inspection findings.
final class GoogleDataLossPreventionContentPolicy extends Resource {
  static const String tfType = 'google_data_loss_prevention_content_policy';

  GoogleDataLossPreventionContentPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> parent,
    TfArg<Map<String, dynamic>>? defaultAction,
    TfArg<Map<String, dynamic>>? failedToScanSupportedFileType,
    TfArg<Map<String, dynamic>>? inputTooLarge,
    TfArg<Map<String, dynamic>>? inspectConfig,
    TfArg<List<Map<String, dynamic>>>? loggingConfigs,
    required TfArg<List<Map<String, dynamic>>> rules,
    TfArg<Map<String, dynamic>>? unsupportedFileType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           'parent': parent,
           if (defaultAction != null) 'default_action': defaultAction,
           if (failedToScanSupportedFileType != null)
             'failed_to_scan_supported_file_type':
                 failedToScanSupportedFileType,
           if (inputTooLarge != null) 'input_too_large': inputTooLarge,
           if (inspectConfig != null) 'inspect_config': inspectConfig,
           if (loggingConfigs != null) 'logging_configs': loggingConfigs,
           'rules': rules,
           if (unsupportedFileType != null)
             'unsupported_file_type': unsupportedFileType,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionContentPolicySensitive;
}
