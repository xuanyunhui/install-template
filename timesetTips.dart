import 'package:lunar/calendar/EightChar.dart';

class TimesetTips {
  EightChar timeset;

  String get tipsOfRoot {
    if (getTipsOfRoot().isEmpty) {
      return "无合局的关系";
    }
    return getTipsOfRoot().join(",");
  }

  String get tipsOfStem {
    return getTipsOfStem().join(",");
  }

  set setTimeset(EightChar timeset) {
    this.timeset = timeset;
    this.timeset.setSect(1);
  }

  TimesetTips(this.timeset) {
    this.timeset.setSect(1);
  }

  List<String> getTipsOfRoot() {
    final List<String> roots = [
      timeset.getYearGan(),
      timeset.getMonthGan(),
      timeset.getDayGan(),
      timeset.getDayGan()
    ];
    List<String> sentences = [];

    // var combos = Combinations(2, roots.toSet().toList());
    // for (final combo in combos()) {
    if (roots.contains("甲") && roots.contains("己")) {
      sentences.add("甲己可合土");
    }
    if (roots.contains("乙") && roots.contains("庚")) {
      sentences.add("乙庚可合金");
    }
    if (roots.contains("丙") && roots.contains("辛")) {
      sentences.add("丙辛可合水");
    }
    if (roots.contains("丁") && roots.contains("壬")) {
      sentences.add("丁壬可合木");
    }
    if (roots.contains("戊") && roots.contains("癸")) {
      sentences.add("戊癸可合火");
    }
    // }
    return sentences;
  }

  List<String> getTipsOfStem() {
    final List<String> stems = [
      timeset.getYearZhi(),
      timeset.getMonthZhi(),
      timeset.getDayZhi(),
      timeset.getTimeZhi()
    ];
    List<String> sentences = [];

    if (stems.contains("子") && stems.contains("丑")) {
      sentences.add("子丑可合土局");
    }
    if (stems.contains("寅") && stems.contains("亥")) {
      sentences.add("寅亥可合木局");
    }
    if (stems.contains("卯") && stems.contains("戌")) {
      sentences.add("卯戌可合火局");
    }
    if (stems.contains("辰") && stems.contains("酉")) {
      sentences.add("辰酉可合金局");
    }
    if (stems.contains("巳") && stems.contains("申")) {
      sentences.add("巳申可合水局");
    }
    if (stems.contains("午") && stems.contains("未")) {
      sentences.add("午未可合土局");
    }
    if (stems.contains("子") && stems.contains("酉")) {
      sentences.add("子酉可相破");
    }
    if (stems.contains("卯") && stems.contains("午")) {
      sentences.add("卯午可相破");
    }
    if (stems.contains("子") && stems.contains("卯")) {
      sentences.add("子卯可相刑");
    }
    if (stems.contains("寅") && stems.contains("丑")) {
      sentences.add("寅丑可暗合");
    }
    if (stems.contains("申") && stems.contains("卯")) {
      sentences.add("申卯可暗合");
    }
    if (stems.contains("午") && stems.contains("亥")) {
      sentences.add("午亥可暗合");
    }

    if (stems.contains("子") && stems.contains("午")) {
      sentences.add("子午可相冲");
    }
    if (stems.contains("丑") && stems.contains("未")) {
      sentences.add("丑未可相冲");
    }
    if (stems.contains("寅") && stems.contains("申")) {
      sentences.add("寅申可相冲");
    }
    if (stems.contains("卯") && stems.contains("酉")) {
      sentences.add("卯酉可相冲");
    }
    if (stems.contains("辰") && stems.contains("戌")) {
      sentences.add("辰戌可相冲");
    }
    if (stems.contains("巳") && stems.contains("亥")) {
      sentences.add("巳亥可相冲");
    }

    if (stems.contains("子") && stems.contains("未")) {
      sentences.add("子未可相害");
    }
    if (stems.contains("丑") && stems.contains("午")) {
      sentences.add("丑午可相害");
    }
    if (stems.contains("寅") && stems.contains("巳")) {
      sentences.add("寅巳可相害");
    }
    if (stems.contains("卯") && stems.contains("辰")) {
      sentences.add("卯辰可相害");
    }
    if (stems.contains("申") && stems.contains("亥")) {
      sentences.add("申亥可相害");
    }
    if (stems.contains("酉") && stems.contains("戌")) {
      sentences.add("酉戌可相害");
    }

    if (stems.indexOf("酉") != stems.lastIndexOf("酉")) {
      sentences.add("酉酉可自刑");
    }
    if (stems.indexOf("辰") != stems.lastIndexOf("辰")) {
      sentences.add("辰辰可自刑");
    }
    if (stems.indexOf("午") != stems.lastIndexOf("午")) {
      sentences.add("午午可自刑");
    }
    if (stems.indexOf("亥") != stems.lastIndexOf("亥")) {
      sentences.add("亥亥可自刑");
    }

    if (stems.contains("巳") && stems.contains("酉") && stems.contains("丑")) {
      sentences.add("巳酉丑可合金局");
    }
    if (stems.contains("申") && stems.contains("子") && stems.contains("辰")) {
      sentences.add("申子辰可合水局");
    }
    if (stems.contains("亥") && stems.contains("卯") && stems.contains("未")) {
      sentences.add("亥卯未可合木局");
    }
    if (stems.contains("寅") && stems.contains("午") && stems.contains("戌")) {
      sentences.add("寅午戌可合火局");
    }

    if (stems.contains("申") && stems.contains("酉") && stems.contains("戌")) {
      sentences.add("申酉戌可会金局");
    }
    if (stems.contains("寅") && stems.contains("卯") && stems.contains("辰")) {
      sentences.add("寅卯辰可会木局");
    }
    if (stems.contains("巳") && stems.contains("午") && stems.contains("未")) {
      sentences.add("巳午未可会火局");
    }
    if (stems.contains("亥") && stems.contains("子") && stems.contains("丑")) {
      sentences.add("亥子丑可会水局");
    }

    if (stems.contains("丑") && stems.contains("未") && stems.contains("戌")) {
      sentences.add("丑未戌可相刑");
    }
