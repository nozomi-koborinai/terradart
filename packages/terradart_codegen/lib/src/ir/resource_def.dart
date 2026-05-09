import 'nested_block.dart';

/// One Terraform resource (or data source) schema.
final class ResourceDef {
  final String terraformType; // 'google_pubsub_topic'
  final String? description;
  final String? deprecationMessage;
  final BlockDef root;

  const ResourceDef({
    required this.terraformType,
    required this.root,
    this.description,
    this.deprecationMessage,
  });
}
