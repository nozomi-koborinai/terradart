/// Static catalog of all curated terradart_cloudflare factories.
///
/// Consumed by terradart_migrate (and any tool that matches Terraform types
/// against the curated set). The [terradartCloudflareCatalog] list is generated
/// by `terradart wrap`.
library;

export 'package:terradart_core/catalog.dart';
export 'src/_catalog.g.dart' show terradartCloudflareCatalog;
