import 'package:covid_19_live_tracker/services/sos_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.asNewInstance();

void setupLocator() {
  locator.registerSingleton(SosService());
}
