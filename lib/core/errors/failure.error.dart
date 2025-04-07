import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String message;
  final String title_error;
  final int status_code ;

  const Failure({
    required this.message,
    required this.title_error,
    required this.status_code,
  });
  //getter for failure instatnce 
  String get failure => message;

  @override
  List<Object?> get props => [
        message,
        title_error,
        status_code,
      ];

}


