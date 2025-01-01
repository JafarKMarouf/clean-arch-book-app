part of '../../index.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      homeLocalDataSource: HomeLocalDataSourceImp(),
      homeRemoteDataSource: HomeRemoteDataSourceImp(getIt.get<ApiService>()),
    ),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
      searchLocalDataSource: SearchLocalDataSourceImpl(),
      searchRemoteDataSource: SearchRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
}
