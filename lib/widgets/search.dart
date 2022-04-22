import 'package:flutter/material.dart';
import 'package:learn_to_grow/widgets/card.dart';

class MySearch extends SearchDelegate {
  final List suggestion;
  final List result;

  MySearch({required this.suggestion, required this.result});
  @override
  List<Widget>? buildActions(BuildContext context) {
    [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.cancel))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
        onPressed: () {
          close(context, query);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    final List loadResults = result.where((lresults) =>
    lresults.toLowerCase().contains(query.toLowerCase())).toList();
        return const KidsZoneWidget(text: 'Kids Zone', image: 'assets/Upgrade.png');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List loadSuggestion = suggestion.where((lsuggestion) =>
    lsuggestion.toLowerCase().contains(query.toLowerCase())).toList();
        return const KidsZoneWidget(text: 'Kids Zone', image: 'assets/Upgrade.png');
  }
}
