import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FiltersScreen'),
      ),
      body: //PopScope(
          //canPop: true,
          //onPopInvoked: (boolean) async {
          // ref.read(filtersProvider.notifier).setFilters({
          //  Filter.glutenfree: _glutenfreeFilter,
          // Filter.lactosefree: _lactosefreeFilter,
          //Filter.vegeterian: _vegeterianFilter,
          //Filter.vegan: _veganFilter,
          // });
          // },
          Column(children: [
        SwitchListTile(
          value: activeFilters[Filter.glutenfree]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.glutenfree, isChecked);
          },
          title: const Text('Gluten-free'),
          subtitle: const Text('Only include gluten-free meals'),
          activeColor: Theme.of(context).primaryColor,
          contentPadding: const EdgeInsets.only(right: 20.0, left: 20.0),
        ),
        SwitchListTile(
          value: activeFilters[Filter.lactosefree]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.lactosefree, isChecked);
          },
          title: const Text('Lactose-free'),
          subtitle: const Text('Only include lactose-free meals'),
          activeColor: Theme.of(context).primaryColor,
          contentPadding: const EdgeInsets.only(right: 20.0, left: 20.0),
        ),
        SwitchListTile(
          value: activeFilters[Filter.vegeterian]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.vegeterian, isChecked);
          },
          title: const Text('Vegeterian'),
          subtitle: const Text('Only include vegeterian meals'),
          activeColor: Theme.of(context).primaryColor,
          contentPadding: const EdgeInsets.only(right: 20.0, left: 20.0),
        ),
        SwitchListTile(
          value: activeFilters[Filter.vegan]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.vegan, isChecked);
          },
          title: const Text('Vegan'),
          subtitle: const Text('Only include vegan meals'),
          activeColor: Theme.of(context).primaryColor,
          contentPadding: const EdgeInsets.only(right: 20.0, left: 20.0),
        ),
      ]),
    );
  }
}
