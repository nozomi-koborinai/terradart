/// Read-only Terraform coverage checker for TerraDart.
///
/// Public exports (tf_reference, tf_json_parser, catalog_matcher,
/// coverage_report, report_render) are added by subsequent tasks as each
/// `src/` file lands.
library;

export 'src/tf_reference.dart';
export 'src/tf_json_parser.dart';
export 'src/catalog_matcher.dart';
