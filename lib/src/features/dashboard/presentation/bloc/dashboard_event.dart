part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.init() = InitDashboardEvent;
  const factory DashboardEvent.updatePrices({
    required TradeLastPriceUpdateMap lastPriceUpdates,
  }) = UpdatePricesDashboardEvent;
  const factory DashboardEvent.loadMore() = LoadMoreDashboardEvent;
}
