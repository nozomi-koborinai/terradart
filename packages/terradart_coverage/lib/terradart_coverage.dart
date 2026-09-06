/// Read-only Terraform coverage checker for TerraDart.
///
/// Scans Terraform source ([scanConfigDir]) or an evaluated
/// `terraform show -json` document ([parseShowJson]) and reports which
/// resource / data types have a curated factory in any TerraDart provider
/// package ([CatalogIndex.all]).
library;

export 'src/tf_reference.dart';
export 'src/tf_json_parser.dart';
export 'src/catalog_matcher.dart';
export 'src/coverage_report.dart';
export 'src/report_render.dart';
export 'src/config_parser.dart';
export 'src/cli_input.dart';
