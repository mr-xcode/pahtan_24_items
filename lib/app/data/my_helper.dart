import 'package:flutter/services.dart';

class MyHelper {
  static String benefits() {
    return "ပဋ္ဌာန်း၂၄-ပစ္စည်း ပစ္စယနိဒ္ဒေသပါဠိကို အမြဲမပြတ် ရွတ်ဖတ် ပွားများသူတို့မှာ အရပ်ရှစ်မျက်နှာမှ ဘေးရန်များကို ကာဆီး ဟန့်တား နိုင်ခြင်း၊ သူခိုး၊ ဓားပြရန်၊ မကောင်းဆိုးဝါး၊ အောက်လမ်းပညာဖြင့်ကြံစည်သူတို့ရန်မှ ကင်းဝေး စေပါသည်။";
  }

  static String short() {
    return "၁။     ဟေတုပစ္စယော\n၂။     အာရမ္မဏပစ္စယော\n၃။     အဓိပတိပစ္စယော\n၄။     အနန္တရပစ္စယော\n၅။     သမနန္တရပစ္စယော\n၆။     သဟဇာတပစ္စယော\n၇။     အညမညပစ္စယော\n၈။     နိဿယပစ္စယော\n၉။     ဥပနိဿယပစ္စယော\n၁၀။   ပုရေဇာတပစ္စယော\n၁၁။   ပစ္ဆာဇာတပစ္စယော\n၁၂။   အာသေဝနပစ္စယော\n၁၃။   ကမ္မပစ္စယော\n၁၄။   ဝိပါကပစ္စယော\n၁၅။   အာဟာရပစ္စယော\n၁၆။   ဣန္ဒြိယပစ္စယော\n၁၇။   ဈာနပစ္စယော\n၁၈။   မဂ္ဂပစ္စယော\n၁၉။   သမ္ပယုတ္တပစ္စယော\n၂၀။   ဝိပ္ပယုတ္တပစ္စယော\n၂၁။   အတ္တိပစ္စယော\n၂၂။   နတ္ထိပစ္စယော\n၂၃။   ဝိဂတပစ္စယော\n၂၄။   အဝိဂတပစ္စယောတိ";
  }

  Future<String> loadHtmlLong() async {
    return await rootBundle.loadString('assets/long.html');
  }

  Future<String> loadHtmlMyan() async {
    return await rootBundle.loadString('assets/trans.html');
  }
}
