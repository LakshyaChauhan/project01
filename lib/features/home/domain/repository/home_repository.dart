import 'package:fpdart/fpdart.dart';
import 'package:myapp/core/error/failure.dart';

abstract interface class HomeRepository {
  Future<Either<Failure,String>> fetchData();
}