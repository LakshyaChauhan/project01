import 'package:fpdart/src/either.dart';
import 'package:myapp/core/error/failure.dart';
import 'package:myapp/core/usecase/usecase.dart';
import 'package:myapp/features/home/domain/repository/home_repository.dart';

class FetchHomeData implements Usecase<String, Null> {
  final HomeRepository homeRepository;
  const FetchHomeData({required this.homeRepository});

  @override
  Future<Either<Failure, String>> call(Null params) async {
    return await homeRepository.fetchData();
  }
}
