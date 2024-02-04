import 'package:flutter/material.dart';
import 'package:groceries_app/common/widgets/checkbox.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class Filters extends StatefulWidget {
  @override
  State<Filters> createState() => _Filters();
}

class FiltersCategories {
  const FiltersCategories(this.name, this.value);

  final String name;
  final bool value;
}

List<FiltersCategories> listFiltersCategories = [
  FiltersCategories('Eggs', true),
  FiltersCategories('Noodles & Pasta', false),
  FiltersCategories('Chips & Crisps', false),
  FiltersCategories('Fast Food', false),
];

List<FiltersCategories> listFiltersBrand = [
  FiltersCategories('Individual Callection', false),
  FiltersCategories('Cocola', true),
  FiltersCategories('Ifad', false),
  FiltersCategories('Kazi Farmas', false),
];

class _Filters extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppStyles.arrowBackIcon,
            ),
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Filters',
                style: AppStyles.appBarTitleTextStyle,
              ),
            ),
          )
        ]),
        elevation: Space.appBarElevation,
        backgroundColor: AppStyles.appBarColor,
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(ListColor.filterCategoriesColor),
              border: Border.all(
                  color: const Color(ListColor.homeScreenSearchColor)),
              borderRadius: BorderRadius.circular(Space.borderCircular)),
          child: Padding(
            padding: EdgeInsets.all(Space.padding),
            child: Column(children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Categories',
                      style: AppStyles.filterTitleTextStyle)),
              Expanded(
                child: ListView.separated(
                    itemCount: listFiltersCategories.length,
                    itemBuilder: (context, index) {
                      return Align(
                          alignment: Alignment.centerLeft,
                          child: MyCheckbox(
                              name: listFiltersCategories[index].name,
                              value: listFiltersCategories[index].value));
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: Space.sizeBoxHeightTiny)),
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Brand', style: AppStyles.filterTitleTextStyle)),
              Expanded(
                child: ListView.separated(
                    itemCount: listFiltersBrand.length,
                    itemBuilder: (context, index) {
                      return Align(
                          alignment: Alignment.centerLeft,
                          child: MyCheckbox(
                              name: listFiltersBrand[index].name,
                              value: listFiltersBrand[index].value));
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: Space.sizeBoxHeightTiny)),
              ),
            ]),
          )),
    );
  }
}
