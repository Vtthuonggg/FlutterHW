void main(List<String> args) {
  var arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
  Map<dynamic, List<String?>?>? sMap = {
    1: null,
    2: [],
    3: ["x", "y", "z"]
  };
  Map<dynamic, List<dynamic>?>? map = {
    "first": ["a", "b", "c", "d"]
  };
  map.addAll(sMap);
  List<int?> arrsToInt = arrs
      .where((e) => e != null)
      .map((e) => int.tryParse(e!))
      .toList(); // Sửa lỗi 1: Sử dụng int.tryParse để tránh lỗi khi parse
  map["second"] = arrsToInt;
  map["third"] = sMap.values.last!
      .sublist(1); // Sửa lỗi 2: Thêm dấu ! để kiểm tra giá trị null
  /*Ví dụ về ...
  Cách sử dụng: [...Iterable]
  Khi sử dụng ... sẽ lấy toàn bộ phần tử của Iterable add vào trong []
  ví dụ: 
  var a = [1,2,3];
  var b = [4,5,6];
  var result = [...a, ...b] // sẽ cho ra result = [1,2,3,4,5,6]*/
  map["fourth"] = [
    ...arrsToInt.where((e) =>
        e != null &&
        e % 2 == 1), // Sửa lỗi 3: Kiểm tra e != null trước khi sử dụng %
    ...arrs.whereType<String>(), // Lọc ra các phần tử kiểu String từ arrs
    ...sMap[3]!.sublist(0, 2) // Thêm dấu ! để kiểm tra giá trị null
  ];

  print(map);
}
