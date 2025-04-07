import 'package:colorschema/core/errors/failure.error.dart';

class ServerFailure extends Failure{
  const ServerFailure({required super.message, required super.title_error, required super.status_code});

}