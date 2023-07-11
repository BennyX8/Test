import 'package:dartz/dartz.dart';
import 'package:setup/core/service_helpers/system_data.dart';
import 'package:setup/features/timeline/domain/usecases/get_clips.dart';

import '../../../../core/errors/failure.dart';
import '../usecases/search_clips.dart';

abstract class TimelineRepository {
  Future<Either<Failure, SystemData>> getClips(GetClipsParams params);
  Future<Either<Failure, SystemData>> searchClips(SearchClipsParams params);
}
