import 'package:flutter/material.dart';
import 'package:meals_app/providers/favorite_meal_provider.dart';
import 'package:meals_app/providers/filters_provider.dart';
// import 'package:meals_app/providers/meals_provider.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/filter_screen.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widget/main_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kInitialFilters ={
  Filter.glutenFree : false ,
  Filter.lactosFree : false ,
  Filter.vegetarian : false ,
  Filter.vegan : false ,
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});
  @override
  ConsumerState<TabsScreen> createState() {
    return TabsScreenState();
  }
}

class TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedIndex = 0;
 
  void selectScreen(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _setDrawer(String identifer) async {
    Navigator.of(context).pop();
    if (identifer == 'filter') {
        await Navigator.of(context).push<Map<Filter,bool>>(
          MaterialPageRoute(builder: (cxt) => const FilterScreen()),
        );
    }

  }

  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoriteMealProvider);
    final avaliableList = ref.watch(filteredMealProvider);


    Widget activeScreen = CategoriesScreen(
      avaliableList: avaliableList,
    );
    String title = 'Categories';
    
    if (_selectedIndex == 1) {
      activeScreen = MealScreen(
        meals: favoriteMeals,
      );
      title = 'favorite';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MainDrawer(
        onChanged: _setDrawer,
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectScreen,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), label: 'Your favourite ')
        ],
      ),
    );
  }
}
