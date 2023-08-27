abstract class ConnectionHelper {
  static List<dynamic> deserialize(dynamic parsedData) {
    if (parsedData == null || parsedData['edges'] == null) {
      throw 'impossible to deserialize connection edges';
    }

    var edgesList = parsedData['edges'] as List;

    var result = <dynamic>[];

    for (var edgeElement in edgesList) {
      var node = edgeElement['node'];
      if (node != null) {
        result.add(node);
      }
    }

    return result;
  }
}
