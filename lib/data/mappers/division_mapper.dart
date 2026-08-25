import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/divisions/division_response/division.dart';
import 'package:sosedifedi/data/models/divisions/division_units_response/division_units_response.dart';
import 'package:sosedifedi/data/models/divisions/metrics_response/metrics_response.dart';
import 'package:sosedifedi/data/models/metric_period_response/metric_period_response.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/models/divisions/division/division.dart';
import 'package:sosedifedi/domain/models/divisions/division_units/division_unit.dart';
import 'package:sosedifedi/domain/models/divisions/metrics/metric.dart';
import 'package:sosedifedi/domain/models/metric_periods/metric_periods.dart';

@singleton
class DivisionMapper {
  Division mapToDivisionFromResponse(
    DivisionResponse response,
    List<MetricItemResponse> metrics,
  ) {
    return Division(
      divisionId: response.divisionId,
      divisionName: response.divisionName,
      isOpen: response.isOpen,
      status: switch (response.status) {
        DivisionResponseStatus.enabled => DivisionStatus.enabled,
        DivisionResponseStatus.disabled => DivisionStatus.disabled,
      },
      metrics: metrics.map(mapToMetricFromResponse).toList(),
      menuFileName: response.menuFileName,
      address: response.address,
    );
  }

  Metric mapToMetricFromResponse(
    MetricItemResponse response,
  ) {
    return Metric(
      divisionId: response.divisionId,
      divisionName: response.divisionName,
      id: response.id,
      title: response.title,
      unitOfMeasurement: response.unitOfMeasurement,
      plan: response.plan,
      fact: response.fact ?? 0.0,
      difference: response.difference,
      destinationType: switch (response.destinationType) {
        DestinationTypeResponse.coffeeMachine => DestinationType.coffeeMachine,
        DestinationTypeResponse.fridge => DestinationType.fridge,
        DestinationTypeResponse.total => DestinationType.total,
        DestinationTypeResponse.unknown => DestinationType.unknown,
      },
      method: response.method,
      lfl: response.lfl,
    );
  }

  DivisionUnit mapToDivisionUnitFromResponse(
    DivisionUnitItemResponse response,
    List<MetricItemResponse> metrics,
    // List<ConnectionStatus> statuses,
  ) {
    return DivisionUnit(
      unitId: response.unitId,
      unitName: response.unitName,
      isOpen: response.isOpen,
      start: response.start,
      end: response.end,
      address: response.address,
      type: switch (response.destinationType) {
        DestinationTypeResponse.coffeeMachine => DivisionUnitType.coffeeMachine,
        DestinationTypeResponse.fridge => DivisionUnitType.fridge,
        _ => DivisionUnitType.unknown,
      },
      metrics: metrics.map(mapToMetricFromResponse).toList(),
      lastConnection: response.lastConnection,
      lastTemperature: response.lastTemperature,
    );
  }

  Store mapToDivisionToStore(
    Division division,
  ) {
    return Store(
      id: division.divisionId,
      name: division.divisionName,
      menuFileName: division.menuFileName,
      address: division.address,
    );
  }

  MetricPeriods mapToMetricPeriodsFromResponse(MetricPeriodResponse response) {
    final items = response.items
        .map((item) => MetricPeriodItem(name: item.name, index: item.index))
        .toList();

    return MetricPeriods(
      defaultItem: items.firstWhere(
        (item) => item.index == response.defaultItem,
        orElse: () => items.first,
      ),
      items: items,
    );
  }
}
