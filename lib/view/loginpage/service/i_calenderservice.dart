import 'package:injectable/injectable.dart';

abstract class ICalenderService {}

@LazySingleton(as: ICalenderService)
class calendarService implements ICalenderService {}
