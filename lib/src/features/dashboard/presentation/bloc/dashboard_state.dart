part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const DashboardState._();
  const factory DashboardState.initial() = DashboardStateInitial;

  const factory DashboardState.loading() = DashboardStateLoading;

  const factory DashboardState.loaded({
    required UnmodifiableMapView<String, TradeLastPriceUpdate> trades,
    required UnmodifiableMapView<String, CryptoSymbol> symbols,
    @Default(false) bool hasReachedMax,
    @Default(1) int page,
  }) = DashboardStateLoaded;

  const factory DashboardState.loadingMore({
    required UnmodifiableMapView<String, TradeLastPriceUpdate> trades,
    required UnmodifiableMapView<String, CryptoSymbol> symbols,
    @Default(false) bool hasReachedMax,
  }) = DashboardStateLoadingMore;

  const factory DashboardState.error(String message) = DashboardStateError;
}
