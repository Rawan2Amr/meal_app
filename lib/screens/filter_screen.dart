import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filters_provider.dart';


class FilterScreen extends ConsumerWidget{
  const FilterScreen({super.key,});

   @override
  Widget build(BuildContext context , WidgetRef ref) {
    final activeFilter = ref.watch(filterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
      ),
      body: Column(
          children: [
            SwitchListTile(
              value: activeFilter[Filter.glutenFree]!,
              onChanged: (isChange){
                 ref.read(filterProvider.notifier).setFilter(Filter.glutenFree, isChange);
              },
              title: Text(
                'Gluten free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                'only include gluten_free meals' ,
                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
              activeColor:Theme.of(context).colorScheme.tertiary ,
              contentPadding:const EdgeInsets.only(left: 33,right: 26),
            ),
            SwitchListTile(
              value: activeFilter[Filter.lactosFree]!,
              onChanged: (isChange){
                ref.read(filterProvider.notifier).setFilter(Filter.lactosFree, isChange);
              },
              title: Text(
                'Lactos_free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                'only include lactos_free meals' ,
                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
              activeColor:Theme.of(context).colorScheme.tertiary ,
              contentPadding:const EdgeInsets.only(left: 33,right: 26),
            ),
            SwitchListTile(
              value: activeFilter[Filter.vegetarian]!,
              onChanged: (isChange){
                ref.read(filterProvider.notifier).setFilter(Filter.vegetarian, isChange);
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                'only include vegetarian meals' ,
                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
              activeColor:Theme.of(context).colorScheme.tertiary ,
              contentPadding:const EdgeInsets.only(left: 33,right: 26),
            ),
            SwitchListTile(
              value: activeFilter[Filter.vegan]!,
              onChanged: (isChange){
               ref.read(filterProvider.notifier).setFilter(Filter.vegan, isChange);
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                'only include vegan meals' ,
                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
              activeColor:Theme.of(context).colorScheme.tertiary ,
              contentPadding:const EdgeInsets.only(left: 33,right: 26),
            ),
          ],
        ),
      );
  }
}
