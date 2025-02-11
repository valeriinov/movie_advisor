import '../../domain/entities/search/search_filter_data.dart';
import '../dto/search/search_filter_data_dto.dart';
import 'app_mapper.dart';

final class AppSearchMapper extends AppMapper {
  SearchFilterDataDto mapSearchFilterDataToDto(SearchFilterData entity) {
    return SearchFilterDataDto(
      query: entity.query,
    );
  }
}
