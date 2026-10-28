import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_example_azure_dns_quickstart/main.dart';

Future<void> main(List<String> args) async {
  await runStack(args, () => AzureDnsStack());
}
