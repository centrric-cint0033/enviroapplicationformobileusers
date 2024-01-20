import 'package:injectable/injectable.dart';

abstract class IHomeService {}

@LazySingleton(as: IHomeService)
class AuthService implements IHomeService {}
