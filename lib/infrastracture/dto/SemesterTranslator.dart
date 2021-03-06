import 'package:penmark/domain/semester.dart';

class SemesterTranslator{
  final map = [
    [Semester.Spring, "春学期"],
    [Semester.Fall, "秋学期"],
    [Semester.YearRound, "通年"],
    [Semester.SpringIntensive, "春学期集中"],
    [Semester.FallIntensive, "秋学期集中"],
    [Semester.One, "1学期"],
    [Semester.Two, "2学期"],
    [Semester.Three, "3学期"]
  ];

  Semester fromPersistence(String str){
    final index = map.indexWhere((e) => e[1] == str);
    assert(index != -1);
    return map[index][0] as Semester;
  }

  String toPersistence(Semester semester){
    final index = map.indexWhere((e) => e[0] == semester);
    assert(index != -1);
    return map[index][1] as String;
  }
}