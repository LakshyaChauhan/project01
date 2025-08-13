import 'package:fpdart/fpdart.dart';
import 'package:myapp/core/error/failure.dart';
import 'package:myapp/features/home/data/sources/home_remote_data_source.dart';
import 'package:myapp/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  const HomeRepositoryImpl({required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, String>> fetchData() async {
    try {
      final response = await homeRemoteDataSource.fetchDataFromServer();
      return right(response);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
