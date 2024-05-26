import 'package:fpdart/fpdart.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';

// abstract class UseCase<Type, Params> {
//   Future<Type> call(Params params);
// }
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
