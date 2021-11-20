class QueryParams {
  final Map<String, List<String>> parameters;

  QueryParams(this.parameters);

  int? getInt(String key) {
    final parameter = getString(key);
    if (parameter != null) {
      return int.tryParse(parameter);
    }
    return null;
  }

  String? getString(String key) => parameters[key]?[0];
}
