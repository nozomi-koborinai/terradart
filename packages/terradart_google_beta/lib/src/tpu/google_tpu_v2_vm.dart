// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tpu_v2_vm`.
const Set<String> _googleTpuV2VmSensitive = <String>{};

/// Factory wrapper for `google_tpu_v2_vm`.
final class GoogleTpuV2Vm extends Resource {
  static const String tfType = 'google_tpu_v2_vm';

  GoogleTpuV2Vm({
    required super.localName,
    TfArg<String>? acceleratorType,
    TfArg<String>? cidrBlock,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? metadata,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> runtimeVersion,
    TfArg<List<String>>? tags,
    TfArg<String>? zone,
    TfArg<Map<String, dynamic>>? acceleratorConfig,
    TfArg<List<Map<String, dynamic>>>? dataDisks,
    TfArg<Map<String, dynamic>>? networkConfig,
    TfArg<List<Map<String, dynamic>>>? networkConfigs,
    TfArg<Map<String, dynamic>>? schedulingConfig,
    TfArg<Map<String, dynamic>>? serviceAccount,
    TfArg<Map<String, dynamic>>? shieldedInstanceConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (acceleratorType != null) 'accelerator_type': acceleratorType,
           if (cidrBlock != null) 'cidr_block': cidrBlock,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (metadata != null) 'metadata': metadata,
           'name': name,
           if (project != null) 'project': project,
           'runtime_version': runtimeVersion,
           if (tags != null) 'tags': tags,
           if (zone != null) 'zone': zone,
           if (acceleratorConfig != null)
             'accelerator_config': acceleratorConfig,
           if (dataDisks != null) 'data_disks': dataDisks,
           if (networkConfig != null) 'network_config': networkConfig,
           if (networkConfigs != null) 'network_configs': networkConfigs,
           if (schedulingConfig != null) 'scheduling_config': schedulingConfig,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': shieldedInstanceConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTpuV2VmSensitive;
}
