import 'package:alnaiem/models/athkar_category.dart';
import 'package:alnaiem/models/sub_category_details.dart';

class CategoryUtil {
  List<AthkarCategory> athkars = new List<AthkarCategory>();

  CategoryUtil() {
    populateCategories();
  }

  void populateCategories() {
    athkars.add(
      new AthkarCategory(
        'أذكار الصباح',
        'assets/images/27.png',
        populateMorningAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'أذكار المساء',
        'assets/images/28.png',
        populateEveningAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'أذكار الاستيقاظ من النوم',
        'assets/images/1.png',
        populatewakingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء لبس الثوب',
        'assets/images/2.png',
        populateClothWearAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء لبس الثوب الجديد',
        'assets/images/3.png',
        populateWearNewClothAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن لبس ثوباً جديداً',
        'assets/images/4.png',
        populateToWhoWearNewClothAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول إذا وضع ثوبه',
        'assets/images/5.png',
        populatePutClothAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء دخول الخلاء',
        'assets/images/6.png',
        populateEnterRestroomAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الخروج من الخلاء',
        'assets/images/7.png',
        populateOutOfRestroomAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الذكر قبل الوضوء',
        'assets/images/8.png',
        populateBeforeAblutionAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الذكر بعد الفراغ من الوضوء',
        'assets/images/9.png',
        populateAfterAblutionAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الذكر عند الخروج من المنزل',
        'assets/images/11.png',
        populateOutOfHomeAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الذكر عند دخول المنزل',
        'assets/images/10.png',
        populateBackToHomeAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الذهاب إلى المسجد',
        'assets/images/12.png',
        populateGoingToMosqueAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء دخول المسجد',
        'assets/images/13.png',
        populateEnterMosqueAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الخروج من المسجد',
        'assets/images/14.png',
        populateGettingOutMosqueAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'أذكار الأذان',
        'assets/images/15.png',
        populatePrayerCallAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الاستفتاح',
        'assets/images/16.png',
        populateEsteftahAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الركوع',
        'assets/images/17.png',
        populateKneelDownAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الرفع من الركوع',
        'assets/images/18.png',
        populateKneelUpAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء السجود',
        'assets/images/19.png',
        populateProstratingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الجلسة بين السجدتين',
        'assets/images/20.png',
        populateBetweenProstratingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء سجود التلاوة',
        'assets/images/21.png',
        populatePrayersProstratingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'التشهد',
        'assets/images/22.png',
        populateTashahudAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الصلاة على النبي ﷺ بعد التشهد',
        'assets/images/23.png',
        populateAfterTashahudAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء بعد التشهد الأخير',
        'assets/images/24.png',
        populateAfterTashahudBeforeSalamAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'أذكار بعد السلام من الصلاة',
        'assets/images/25.png',
        populateAfterPrayAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء صلاة الاستخارة',
        'assets/images/26.png',
        populateEstekharaAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'أذكار النوم',
        'assets/images/29.png',
        populateSleepingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء إذا تقلب ليلاً',
        'assets/images/30.png',
        populateWakefulnessAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الفزع في النوم',
        'assets/images/31.png',
        populateNightmareAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يفعل من رأى الرؤيا أو الحلم',
        'assets/images/32.png',
        populateSeeingDreamAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء قنوت الوتر',
        'assets/images/33.png',
        populateAlwaterAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الذكر عقب السلام من الوتر',
        'assets/images/34.png',
        populateAfterAlwaterAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الهم و الحزن',
        'assets/images/130.png',
        populateAlhamAndAlhozonAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الكرب',
        'assets/images/131.png',
        populateAlkarbAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء لقاء العدو وذي السلطان',
        'assets/images/36.png',
        populateFacingEnemyAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء من خاف ظلم السلطان',
        'assets/images/37.png',
        populateFearOfFacingEnemyAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء على العدو',
        'assets/images/38.png',
        populatePrayersOnEnemyAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول من خاف قوما',
        'assets/images/132.png',
        populatePrayersOnFearingGroupAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء من أصابه شك في الإيمان',
        'assets/images/39.png',
        populateFaithQuestioningAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء قضاء الدين',
        'assets/images/40.png',
        populatePaymentAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الوسوسة في الصلاة',
        'assets/images/41.png',
        populateWaswasinPrayingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء من استصعب عليه أمر',
        'assets/images/42.png',
        populateHardThingsAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول ويفعل من أذنب ذنباً',
        'assets/images/43.png',
        populateWhoDidBadThingsAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء طرد الشيطان ووساوسهً',
        'assets/images/44.png',
        populateForDevilAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء حينما يقع مالا يرضاه',
        'assets/images/45.png',
        populateWeaknessAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'تهنئة المولود له وجوابه',
        'assets/images/46.png',
        populateNewBabyAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يعوذ به الأولاد',
        'assets/images/133.png',
        populateForKidsAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء للمريض في عيادته',
        'assets/images/47.png',
        populateVisitingSickPersonAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'فضل عيادة المريض',
        'assets/images/48.png',
        populateTheBenefitOfVisitingSickPersonAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء المريض الذي يئس من حياته',
        'assets/images/49.png',
        populateDesperateAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'تلقين المحتضر',
        'assets/images/50.png',
        populateTalqeenAlMohtaderAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء من أصيب بمصيبة',
        'assets/images/51.png',
        populateMnOsebBmosebahAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء عند إغماض الميت',
        'assets/images/52.png',
        populateEghmadAlMayetAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء للميت في الصلاة عليه',
        'assets/images/53.png',
        populatePrayForDeadAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء للفرط في الصلاة عليه ',
        'assets/images/54.png',
        populatePrayForDead2Athkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء التعزية',
        'assets/images/55.png',
        populateAltazeyahAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء عند إدخال الميت القبر',
        'assets/images/56.png',
        populatePutDeadInGraveAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء بعد دفن الميت',
        'assets/images/57.png',
        populateAfterPutDeadInGraveAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء زيارة القبور',
        'assets/images/58.png',
        populateVisitGraveAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الريح',
        'assets/images/59.png',
        populateWindAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الرعد',
        'assets/images/60.png',
        populateThunderAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'من أدعية الاستسقاء',
        'assets/images/61.png',
        populateAskForRainAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء إذا نزل المطر',
        'assets/images/62.png',
        populateDuringRainAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الذكر بعد نزول المطر',
        'assets/images/134.png',
        populateAfterRainAthkars(),
      ),
    );

    athkars.add(
      new AthkarCategory(
        'من أدعية الاستصحاء',
        'assets/images/63.png',
        populateEsteshaAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء رؤية الهلال',
        'assets/images/64.png',
        populateSeeingCrescentAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء عند إفطار الصائم',
        'assets/images/65.png',
        populateFeedingFastingPersonAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء قبل الطعام',
        'assets/images/66.png',
        populateBeforeEatingFoodAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء عند الفراغ من الطعام',
        'assets/images/67.png',
        populateAfterEatingFoodAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الضيف لصاحب الطعام',
        'assets/images/68.png',
        populateVisitorForHostingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن سقاه أو إذا أراد ذلك',
        'assets/images/69.png',
        populateForGiveDrinkAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء إذا أفطر عند أهل بيت',
        'assets/images/70.png',
        populateForEatingWithFamilyAthkars(),
      ),
    );
//    athkars.add(
//      new AthkarCategory(
//        'دعاء الصائم إذا حضر الطعام ولم يفطر',
//        'assets/images/71.png',
//        populateFastingWhoDidNotEatAthkars(),
//      ),
//    );
    athkars.add(
      new AthkarCategory(
        'ما يقول الصائم إذا سابه أحد',
        'assets/images/72.png',
        populateFastingSaysForUnpoliteAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء عند رؤية باكورة الثمر',
        'assets/images/73.png',
        populateNewFruitAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء العطاس',
        'assets/images/74.png',
        populateSneezeAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        ' ما يقال للكافر إذا عطس',
        'assets/images/75.png',
        populateSneezeForOtherAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء للمتزوج',
        'assets/images/76.png',
        populateForMarriedAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء المتزوج أو شراء الدابة',
        'assets/images/77.png',
        populateMarriedForHimselfAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء قبل إتيان الزوجة',
        'assets/images/78.png',
        populateMarriedAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الغضب',
        'assets/images/79.png',
        populateAngryAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء من رأى مبتلى',
        'assets/images/80.png',
        populateSeeingSickAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقال في المجلس',
        'assets/images/81.png',
        populateCouncilAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'كفارة المجلس',
        'assets/images/82.png',
        populateAfterCouncilAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن قال غفر الله لك',
        'assets/images/83.png',
        populateForOtherAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن صنع إليك معروفاً',
        'assets/images/84.png',
        populateForOtherWhoDidGoodAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يعصم الله به من الدجال',
        'assets/images/85.png',
        populateForDajalAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن قال إني احبك في الله',
        'assets/images/135.png',
        populateForLoveInGoodAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن عرض عليك ماله',
        'assets/images/87.png',
        populateSuggestGivingMoneyAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن أقرض عند القضاء',
        'assets/images/88.png',
        populateForWhoGiveMoneyAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الخوف من الشرك',
        'assets/images/89.png',
        populateFearAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن قال بارك الله فيك',
        'assets/images/90.png',
        populateForWhoSaidAllahBlessYouAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء كراهية الطيرة',
        'assets/images/91.png',
        populateNotLikeTayarahAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء ركوب الدابة',
        'assets/images/92.png',
        populateRiddingAnimalAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء السفر',
        'assets/images/93.png',
        populateTravelAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء دخول القرية أو البلدة',
        'assets/images/94.png',
        populateAccessTownAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء دخول السوق',
        'assets/images/136.png',
        populateAccessMarketAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء إذا تعس المركوب',
        'assets/images/96.png',
        populateBadRiddingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء المسافر للمقيم',
        'assets/images/97.png',
        populateForWhoTravelAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء المقيم للمسافر',
        'assets/images/98.png',
        populateForWhoTravel2Athkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'التكبير والتسبيح في سير السفر',
        'assets/images/99.png',
        populateForTakbeerAndTasbeehAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء المسافر إذا أسحر',
        'assets/images/100.png',
        populateTravelerIfAsharAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء إذا نزل منزلا',
        'assets/images/101.png',
        populateStayAtTravelAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ذكر الرجوع من السفر',
        'assets/images/102.png',
        populateBackFromTravelAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء فيما يسره أو يكرهه',
        'assets/images/103.png',
        populateWhatToSayOnGoodAndBadAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'فضل الصلاة على النبي ﷺ',
        'assets/images/104.png',
        populateSalahOnProphetMuhammadAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'إفشاء السلام',
        'assets/images/105.png',
        populateSayHiAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'كيف يرد السلام على الكافر',
        'assets/images/106.png',
        populateReplyToHiAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء صياح الديك ونهيق الحمار',
        'assets/images/107.png',
        populateAnimalSoundsAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء نباح الكلاب بالليل',
        'assets/images/108.png',
        populateDogsSoundsAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء لمن سببته',
        'assets/images/109.png',
        populateToSomeoneElseAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول المسلم إذا مدح المسلم',
        'assets/images/110.png',
        populateComplimentAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول المسلم إذا زكي',
        'assets/images/111.png',
        populateMaYaqolEzaZokiAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'التلبية في الحج أوالعمرة',
        'assets/images/112.png',
        populateTalbeyahAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'التكبيرة إذا أتي الركن الأسود',
        'assets/images/113.png',
        populateTakbeerhAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'بين الركن اليماني والحجر الأسود',
        'assets/images/114.png',
        populateRokonYamaniAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء الوقوف على الصفا والمروة',
        'assets/images/115.png',
        populateSafaAndMarwaAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الدعاء يوم عرفة',
        'assets/images/116.png',
        populateArafahAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الذكر عند المشعر الحرام',
        'assets/images/117.png',
        populateMasharAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'التكبيرة عند رمي الجمار',
        'assets/images/118.png',
        populateStoneThrowingAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول عند التعجب والأمر السار',
        'assets/images/119.png',
        populateExclamationAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يفعل من أتاه أمر يسره',
        'assets/images/120.png',
        populateEasyThingsAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول من أحس وجعاً في جسده',
        'assets/images/121.png',
        populatePainAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'دعاء من خشي أن يصيب بعينه',
        'assets/images/122.png',
        populatePainInEyesAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقال عند الفزع',
        'assets/images/123.png',
        populateScareAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول عند الذبح أو النحر',
        'assets/images/124.png',
        populateOdheyehAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'ما يقول لرد كيد مردة الشياطين',
        'assets/images/125.png',
        populateProtectFromDevilAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'الاستغفار والتوبة',
        'assets/images/126.png',
        populateEsteghfarAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'فضل التسبيح والتكبير',
        'assets/images/127.png',
        populateTasbehTahmedTakbeerAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'كيف كان النبي ﷺ يسبح ؟',
        'assets/images/128.png',
        populateTakbeerProhibitMuhammadAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'من أنواع الخير والآداب الجامعة',
        'assets/images/137.png',
        populateGoodAndPoliteAthkars(),
      ),
    );
    athkars.add(
      new AthkarCategory(
        'أدعية للميت',
        'assets/images/129.png',
        populatePrayersForDeadAthkars(),
      ),
    );
  }

  List<AthkarCategory> getCategories() {
    return this.athkars;
  }

  List<SubCategoryDetails> populatewakingAthkars() {
    List<SubCategoryDetails> wakingAthkars = new List<SubCategoryDetails>();
    wakingAthkars.add(
      new SubCategoryDetails(
          'الحَمْدُ لله الذِي أحْيَانا بَعْدَ مَا أمَاتَنَا وإلَيْهِ النَشُور.',
          1,
          0),
    );
    wakingAthkars.add(
      new SubCategoryDetails(
          ' لا إلَهَ إلاَّ الله وحْدَهُ لا شَرِيكَ لَهُ، لَهُ المُلْكُ ولَهُ الحَمْدُ وهُوَ على كلِّ شيءٍ قَدير،سُبْحانَ الله والحَمْدُ لله  ولا إله إلا الله والله أكبر ولا حَولَ ولا قُوةَ إلا بالله العلي العظيم، رب اغْفِرْ لي.',
          1,
          0),
    );
    wakingAthkars.add(
      new SubCategoryDetails(
          'الحَمْدُ لله الذِي عَافَانِي في جَسَدِي ورَدَّ عَلَيَّ رُوحِي، وأَذِنَ لي بِذِكْرهِ.',
          1,
          0),
    );
    wakingAthkars.add(
      new SubCategoryDetails(
          '(إِنَّ فِي خَلْقِ السَّمَاوَاتِ وَالأَرْضِ وَاخْتِلاَفِ اللَّيْلِ وَالنَّهَارِ لآيَاتٍ لِّأُوْلِي الألْبَابِ * الَّذِينَ يَذْكُرُونَ اللّهَ قِيَاماً وَقُعُوداً وَعَلَىَ جُنُوبِهِمْ وَيَتَفَكَّرُونَ فِي خَلْقِ السَّمَاوَاتِ وَالأَرْضِ رَبَّنَا مَا خَلَقْتَ هَذا بَاطِلاً سُبْحَانَكَ فَقِنَا عَذَابَ النَّارِ * رَبَّنَا إِنَّكَ مَن تُدْخِلِ النَّارَ فَقَدْ أَخْزَيْتَهُ وَمَا لِلظَّالِمِينَ مِنْ أَنصَارٍ * رَّبَّنَا إِنَّنَا سَمِعْنَا مُنَادِياً يُنَادِي لِلإِيمَانِ أَنْ آمِنُواْ بِرَبِّكُمْ فَآمَنَّا رَبَّنَا فَاغْفِرْ لَنَا ذُنُوبَنَا وَكَفِّرْ عَنَّا سَيِّئَاتِنَا وَتَوَفَّنَا مَعَ الأبْرَارِ * رَبَّنَا وَآتِنَا مَا وَعَدتَّنَا عَلَى رُسُلِكَ وَلاَ تُخْزِنَا يَوْمَ الْقِيَامَةِ إِنَّكَ لاَ تُخْلِفُ الْمِيعَادَ * فَاسْتَجَابَ لَهُمْ رَبُّهُمْ أَنِّي لاَ أُضِيعُ عَمَلَ عَامِلٍ مِّنكُم مِّن ذَكَرٍ أَوْ أُنثَى بَعْضُكُم مِّن بَعْضٍ فَالَّذِينَ هَاجَرُواْ وَأُخْرِجُواْ مِن دِيَارِهِمْ وَأُوذُواْ فِي سَبِيلِي وَقَاتَلُواْ وَقُتِلُواْ لأُكَفِّرَنَّ عَنْهُمْ سَيِّئَاتِهِمْ وَلأُدْخِلَنَّهُمْ جَنَّاتٍ تَجْرِي مِن تَحْتِهَا الأَنْهَارُ ثَوَاباً مِّن عِندِ اللّهِ وَاللّهُ عِندَهُ حُسْنُ الثَّوَابِ * لاَ يَغُرَّنَّكَ تَقَلُّبُ الَّذِينَ كَفَرُواْ فِي الْبِلاَدِ * مَتَاعٌ قَلِيلٌ ثُمَّ مَأْوَاهُمْ جَهَنَّمُ وَبِئْسَ الْمِهَادُِ * لَكِنِ الَّذِينَ اتَّقَوْاْ رَبَّهُمْ لَهُمْ جَنَّاتٌ تَجْرِي مِن تَحْتِهَا الأَنْهَارُ خَالِدِينَ فِيهَا نُزُلاً مِّنْ عِندِ اللّهِ وَمَا عِندَ اللّهِ خَيْرٌ لِّلأَبْرَارِ * وَإِنَّ مِنْ أَهْلِ الْكِتَابِ لَمَن يُؤْمِنُ بِاللّهِ وَمَا أُنزِلَ إِلَيْكُمْ وَمَا أُنزِلَ إِلَيْهِمْ خَاشِعِينَ لِلّهِ لاَ يَشْتَرُونَ بِآيَاتِ اللّهِ ثَمَناً قَلِيلاً أُوْلَـئِكَ لَهُمْ أَجْرُهُمْ عِندَ رَبِّهِمْ إِنَّ اللّهَ سَرِيعُ الْحِسَابِ * يَا أَيُّهَا الَّذِينَ آمَنُواْ اصْبِرُواْ وَصَابِرُواْ وَرَابِطُواْ وَاتَّقُواْ اللّهَ لَعَلَّكُمْ تُفْلِحُونَ).',
          1,
          0),
    );
    return wakingAthkars;
  }

  List<SubCategoryDetails> populateClothWearAthkars() {
    List<SubCategoryDetails> clothWearAthkars = new List<SubCategoryDetails>();
    clothWearAthkars.add(
      new SubCategoryDetails(
          'الْحَمْدُ لِلَّهِ الَّذِي كَسَانِي هَذَا (الثَّوْبَ) وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلاَ قُوَّةٍ.',
          1,
          0),
    );
    return clothWearAthkars;
  }

  List<SubCategoryDetails> populateWearNewClothAthkars() {
    List<SubCategoryDetails> wearNewClothAthkars =
        new List<SubCategoryDetails>();
    wearNewClothAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ لَكَ الْحَمْدُ أَنْتَ كَسَوْتَنِيه، أَسْأَلُكَ مِنْ خَيْرِهِ وَخَيْرِ مَا صُنِعَ لَه، وَأَعُوذُ بِكَ مِنْ شَرِّه و شَرِّ مَا صُنِعَ لَه.',
          1,
          0),
    );
    return wearNewClothAthkars;
  }

  List<SubCategoryDetails> populateToWhoWearNewClothAthkars() {
    List<SubCategoryDetails> toWhoWearNewClothAthkars =
        new List<SubCategoryDetails>();
    toWhoWearNewClothAthkars.add(
      new SubCategoryDetails('تُبْلي ويَخْلِفُ اللّهُ تَعَالَى.', 1, 0),
    );
    toWhoWearNewClothAthkars.add(
      new SubCategoryDetails(
          'الْبَسْ جَدِيدًا، وَعِشْ حَمِيدًا، وَمُتْ شَهِيدًا.', 1, 0),
    );
    return toWhoWearNewClothAthkars;
  }

  List<SubCategoryDetails> populatePutClothAthkars() {
    List<SubCategoryDetails> putClothAthkars = new List<SubCategoryDetails>();

    putClothAthkars.add(
      new SubCategoryDetails('بِسْمِ اللّه.', 1, 0),
    );
    return putClothAthkars;
  }

  List<SubCategoryDetails> populateEnterRestroomAthkars() {
    List<SubCategoryDetails> enterRestroomAthkars =
        new List<SubCategoryDetails>();
    enterRestroomAthkars.add(
      new SubCategoryDetails(
          '[بِسْمِ الله] اللّهُـمَّ إِنِّـي أَعـوذُ بِـكَ مِـنَ الْخُـبْثِ وَالْخَبائِث.',
          1,
          0),
    );
    return enterRestroomAthkars;
  }

  List<SubCategoryDetails> populateOutOfRestroomAthkars() {
    List<SubCategoryDetails> outOfRestroomAthkars =
        new List<SubCategoryDetails>();
    outOfRestroomAthkars.add(
      new SubCategoryDetails('غُفْـرانَك.', 1, 0),
    );
    return outOfRestroomAthkars;
  }

  List<SubCategoryDetails> populateBeforeAblutionAthkars() {
    List<SubCategoryDetails> beforeAblutionAthkars =
        new List<SubCategoryDetails>();
    beforeAblutionAthkars.add(
      new SubCategoryDetails('بِسْمِ ٱلله.ّٰ', 1, 0),
    );
    return beforeAblutionAthkars;
  }

  List<SubCategoryDetails> populateAfterAblutionAthkars() {
    List<SubCategoryDetails> afterAblutionAthkars =
        new List<SubCategoryDetails>();
    afterAblutionAthkars.add(
      new SubCategoryDetails(
          'أشْهَدُ أن لا إله إلا الله وحْدَهُ لا شريكَ له، وأشْهَدُ أنَّ محمداً عَبدُهُ ورسُولُه.',
          1,
          0),
    );
    afterAblutionAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجْعَلْني مِنَ التَّوَّابينَ واجْعَلْنِي من المُتَطَهِّرِينَ.',
          1,
          0),
    );
    afterAblutionAthkars.add(
      new SubCategoryDetails(
          'سُبْحَانَكَ اللَّهُمَّ وبَحَمْدكَ أشْهدُ أنْ لا إلهَ إلا أنْتَ أَسْتَغْفِرُكَ وأتُوبُ إِلَيْكَ.',
          1,
          0),
    );
    return afterAblutionAthkars;
  }

  List<SubCategoryDetails> populateOutOfHomeAthkars() {
    List<SubCategoryDetails> outOfHomeAthkars = new List<SubCategoryDetails>();
    outOfHomeAthkars.add(
      new SubCategoryDetails(
          'بِسْم اللَّهِ توكَّلْتُ عَلَى اللَّه، ولا حوْلَ ولا قُوةَ إلاَّ بِاللَّهُ.',
          1,
          0),
    );
    outOfHomeAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي أعوذُ بِكَ أنْ أَضِلَّ أو أُضَلَّ، أَوْ أَزِلَّ أوْ أُزلَّ، أوْ أظلِمَ أوْ أُظلَم، أوْ أَجْهَلَ أو يُجهَلَ عَلَيَّ.',
          1,
          0),
    );
    return outOfHomeAthkars;
  }

  List<SubCategoryDetails> populateBackToHomeAthkars() {
    List<SubCategoryDetails> backToHomeAthkars = new List<SubCategoryDetails>();
    backToHomeAthkars.add(
      new SubCategoryDetails(
          'بِسْمِ اللَّهِ وَلَجْنَا، وبِسْمِ اللَّهِ خَرَجْنَا، وَعَلَى رَبِّنَا تَوَكَّلْنَا، ثُمَّ لِيُسَلِّمْ عَلَى أَهله.',
          1,
          0),
    );
    return backToHomeAthkars;
  }

  List<SubCategoryDetails> populateGoingToMosqueAthkars() {
    List<SubCategoryDetails> gointToMosqueAthkars =
        new List<SubCategoryDetails>();
    gointToMosqueAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجْعَلْ في قَلْبي نُوراً، وَفي لِساني نوراً، وفي سَمْعي نُوراً، وفي بَصَري نُوراً، ومِنْ فَوقي نُوراً، ومِن تحتي نُوراً، وعن يميني نُوراً، وعن شمالي نُوراً، من أمامي نُوراً، ومن خَلْفي نوراً، واجعل في نفسي نُوراً، وأَعْظِم لِي نُوراً، وعَظِّم لي نُوراً، واجْعَلْ لي نُوراً، واجعلني نُوراً، اللّهُمَّ أَعْطِني نُوراً، واجعل في عَصَبي نُوراً، وفي لَحْمِي نُوراً، وفي دَمِي نُوراً، وفي شعري نُوراً، وفي بَشَرِي نُوراً. [اللَّهُمَّ اجعَلْ لي نُوراً في قَبْري.. ونُوراً في عِظَامي]، [وزِدْني نُوراً، وزِدْني نُوراً، وزِدْني نُورا]، [وَهَبْ لي نُوراً على نُورٍ].',
          1,
          0),
    );
    return gointToMosqueAthkars;
  }

  List<SubCategoryDetails> populateEnterMosqueAthkars() {
    List<SubCategoryDetails> enterMosqueAthkars =
        new List<SubCategoryDetails>();
    enterMosqueAthkars.add(
      new SubCategoryDetails(
          'أَعُوذُ باللهِ العَظيـم، وَبِوَجْهِهِ الكَرِيم، وَسُلْطانِهِ القَديم، مِنَ الشّيْطانِ الرَّجـيم. [بِسْمِ الله، وَالصَّلاةُ وَالسَّلامُ عَلى رَسولِ الله]، اللَّهُمَّ افْتَحْ لي أَبْوابَ رَحْمَتِكَ.',
          1,
          0),
    );
    return enterMosqueAthkars;
  }

  List<SubCategoryDetails> populateGettingOutMosqueAthkars() {
    List<SubCategoryDetails> gettingOutMosqueAthkars =
        new List<SubCategoryDetails>();
    gettingOutMosqueAthkars.add(
      new SubCategoryDetails(
          'بِسْمِ الله وَالصّلاةُ وَالسّلامُ عَلى رَسُولِ الله، اللّهُمَّ إِنّي أَسْأَلُكَ مِنْ فَضْلِك، اللّهُمَّ اعصِمْني مِنَ الشَّيْطانِ الرَّجيمَ.',
          1,
          0),
    );
    return gettingOutMosqueAthkars;
  }

  List<SubCategoryDetails> populatePrayerCallAthkars() {
    List<SubCategoryDetails> prayerCallAthkars = new List<SubCategoryDetails>();
    prayerCallAthkars.add(
      new SubCategoryDetails(
          'يَقُولُ مثل ما يَقُولُ الـمُؤَذِّنُ إلاَّ فِي "حَيَّ عَلَى الصَّلاةِ وَحَيَّ عَلَى الفَلاَحِ" فَيَقُولُ: "لاَ حَوْلَ وَلا قُوَّةَ إلاَّ باللَّهِ".',
          1,
          0),
    );
    prayerCallAthkars.add(
      new SubCategoryDetails(
          'يَقُولُ: وأنا أَشْهَد أَنْ لا إِله إِلاَّ اللَّه وحْدهُ لا شَريك لهُ، وَأَنَّ مُحمَّداً عبْدُهُ وَرسُولُه، رضِيتُ بِاللَّهِ ربًّا، وبمُحَمَّدٍ رَسُولاً، وبالإِسْلامِ دِينًا. يقول ذلك عقب تشهد المؤذن.',
          1,
          0),
    );
    prayerCallAthkars.add(
      new SubCategoryDetails(
          'يصلي على النبي ﷺ بعد فراغه من إجابة المؤذنُ.', 1, 0),
    );

    prayerCallAthkars.add(
      new SubCategoryDetails(
          'يَقُولُ: اللَّهُمَّ رَبَّ هَذِهِ الدَّعْوَةِ التَّامَّةِ، والصَّلاةِ القَائِمَةِ، آتِ مُـحَمَّداً الوَسِيْلَةَ والفَضِيْلَةَ، وابْعَثْهُ مَقَاماً مَـحْمُوداً الَّذِي وَعَدْتَهُ، إنَّكَ لا تُخْلِفُ الـمِيْعَادِ.',
          1,
          0),
    );
    prayerCallAthkars.add(
      new SubCategoryDetails(
          'يدعو لنفسه بَيْنَ الأَذَانِ وَالْإِقَامَة فإِنَّ الدُّعَاءَ حينئذٍ لَا يُرَدُّ.',
          1,
          0),
    );
    return prayerCallAthkars;
  }

  List<SubCategoryDetails> populateEsteftahAthkars() {
    List<SubCategoryDetails> esteftahAthkars = new List<SubCategoryDetails>();
    esteftahAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ بَاعِدْ بَيْنِي وَبَيْنَ خَطَايَايَ كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ، اللَّهُمَّ نَقِّنِي مِنْ خَطَايَايَ كَمَا يُنَقَّى الثَّوْبُ الأَبْيَضُ مِنْ الدَّنَسِ، اللَّهُمَّ اغْسِلْنِي مِنْ خَطَايَايَ بالثَّلْجِِ والْمَاء وَالْبَرَدِ.',
          1,
          0),
    );
    esteftahAthkars.add(
      new SubCategoryDetails(
          'سُبْحَانَكَ اللهُمَّ وَبِحَمْدِكَ، وتَبَارَكَ اسْمُكَ، وَتَعَالَى جَدُّكَ، وَلَا إِلَهَ غَيْرُكَِ.',
          1,
          0),
    );
    esteftahAthkars.add(
      new SubCategoryDetails(
          'وَجَّهْتُ وَجْهِيَ لِلَّذِي فَطَرَ السَّمَأوَاتِ وَالأَرْضَ حَنِيفًا وَمَا أَنَا مِنَ الْمُشْرِكِينَ، إِنَّ صَلاَتِي وَنُسُكِي وَمَحْيَايَ وَمَمَاتِي لِلهِ رَبِّ الْعَالَمِينَ، لاَ شَرِيكَ لَهُ وَبِذَلِكَ أُمِرْتُ وَأَنَا مِنَ الْمُسْلِمِينَ. اللَّهُمَّ أَنْتَ الْمَلِكُ لاَ إِلَهَ إِلاَّ أَنْت. أَنْتَ رَبِّي وَأَنَا عَبْدُكَ، ظَلَمْتُ نَفْسِي وَاعْتَرَفْتُ بِذَنْبِي فَاغْفِرْ لِي ذُنُوبِي جَمِيعًا إنُّه لاَ يَغْفِرُ الذُّنُوبَ إِلاَّ أَنْتَ. وَاهْدِنِي ِلأَحْسَنِ الأَخْلاَق لاَ يَهْدِي ِلأَحْسَنِهَا إِلاَّ أَنْتَ، وَاصْرِفْ عَنِّي سَيِّئَهَا، لاَ يَصْرِفُ عَنِّي سَيِّئَهَا إِلاَّ أَنْتَ، لَبَّيْكَ وَسَعْدَيْكَ، وَالْخَيْرُ كُلُّهُ بِيَدَيْكَ، وَالشَّرُّ لَيسَ إلَيكََ، أَنَا بِكَ وَإِلَيْكَ، تَبَارَكْتَ وَتَعَالَيْتَ، أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكََِ.',
          1,
          0),
    );
    esteftahAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ رَبَّ جِبرائِيلَ، وَمِيكَائِيلَ، وَإِسْرَافِيلَ فَاطِرَ السَّمَأوَاتِ وَالأَرْضِ، عَالِمَ الْغَيْبِ وَالشَّهَادَةِ، أَنْتَ تَحْكُمُ بَيْنَ عِبَادِكَ فِيمَا كَانُوا فِيهِ يَخْتَلِفُونَ. اهْدِنِي لِمَا اخْتُلِفَ فِيهِ مِنَ الْحَقِّ بِإِذْنِكَ إِنَّكَ تَهْدِي مَنْ تَشَاءُ إِلَى صِرَاطٍ مُسْتَقِيمٍ.',
          1,
          0),
    );
    esteftahAthkars.add(
      new SubCategoryDetails(
          'اللهُ أَكْبَرُ كَبِيرًا، اللهُ أَكْبَرُ كَبِيرًا، اللهُ أَكْبَرُ كَبِيرًا، و الْحَمْدُ لِلهِ كَثِيرًا، و الْحَمْدُ لِلهِ كَثِيرًا، و الْحَمْدُ لِلهِ كَثِيرًا، و سُبْحَانَ اللهِ بُكْرَةً وَأَصِيلاً، و سُبْحَانَ اللهِ بُكْرَةً وَأَصِيلاً، و سُبْحَانَ اللهِ بُكْرَةً وَأَصِيلاً. أَعُوذُ بِاللهَ مِنَ الشَّيْطَانِ: مِنْ َنَفْخه، وَنَفْثِه، وهَهزِه.',
          1,
          0),
    );
    esteftahAthkars.add(
      new SubCategoryDetails(
          'كان النبي ﷺ إذا قام من الليل يتهجد قال: "اللهم لك الحمد أنت نور السموات والأرض ومن فيهن، ولك الحمد أنت قيمُ السموات والأرض ومن فيهن [ولك الحمد أنت رب السموات والأرض ومن فيهن]، [ولك الحمد لك ملك السموات والأرض ومن فيهن] [ولك الحمد أنت ملك السموات والأرض] [ولك الحمد] [أنت الحق، ووعدك الحق، وقولك الحق، ولقاؤك الحق، والجنة حق، والنار حق، والنبيّون حق، ومحمد ﷺ حق، والساعة حق] [اللهم لك أسلمت، وعليك توكلت، وبك آمنت، وإليك أنبت، وبك خاصمت، وإليك حاكمت، فاغفر لي ما قدمت وما أخرت، وأسررت، وما أعلنت] [أنت المقدم، وأنت المؤخر لا إله إلا أنت] [أنت إلهي لا إله إلا أنت].',
          1,
          0),
    );
    return esteftahAthkars;
  }

  List<SubCategoryDetails> populateKneelDownAthkars() {
    List<SubCategoryDetails> kneelDownAthkars = new List<SubCategoryDetails>();
    kneelDownAthkars.add(
      new SubCategoryDetails('سُبْحَانَ رَبِّيَ الْعَظِيمِِ.', 3, 0),
    );
    kneelDownAthkars.add(
      new SubCategoryDetails(
          'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِك، اللَّهُمَّ اغْفِرْ لِيِِ.',
          1,
          0),
    );
    kneelDownAthkars.add(
      new SubCategoryDetails(
          'سُّبُّوحٌ، قُدُوسٌ، رَبُ الملائكة والرُّوحِِ.', 1, 0),
    );
    kneelDownAthkars.add(
      new SubCategoryDetails(
          'للَّهُمَّ لَكَ رَكَعْتُ، وَبِكَ آمَنْت، وَلَكَ أَسْلَمْتُ خَشَعَ لَكَ سَمْعِي، وَبَصَرِي، وَمُخِّي، وَعَظْمِي، وَعَصَبِي، وما استقل به قدمي.',
          1,
          0),
    );
    kneelDownAthkars.add(
      new SubCategoryDetails(
          'سُبْحَانَ ذِي الْجَبَرُوتِ، وَالْمَلَكُوتِ، وَالْكِبْرِيَاءِ، وَالْعَظَمَةِ.',
          1,
          0),
    );
    return kneelDownAthkars;
  }

  List<SubCategoryDetails> populateKneelUpAthkars() {
    List<SubCategoryDetails> kneelUpAthkars = new List<SubCategoryDetails>();
    kneelUpAthkars.add(
      new SubCategoryDetails('سَمِعَ اللهُ لِمَنْ حَمِده.', 1, 0),
    );
    kneelUpAthkars.add(
      new SubCategoryDetails(
          'رَبَّنَا وَلَكَ الْحَمْد، حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فيه.',
          1,
          0),
    );
    kneelUpAthkars.add(
      new SubCategoryDetails(
          'مِلْء السَّمَاوَاتِ ومِلْء الأَرْضِ و ما بينهما، وَمِلْء مَا شِئْتَ مِنْ شَيْءٍ بَعد، أَهْلَ الثَّنَاءِ وَالْمَجْدِ، أَحَقُّ مَا قَالَ الْعَبْدُ، وَكُلُّنَا لَكَ عَبْدٌ، اللَّهُمَّ لا مَانِعَ لِمَا أَعْطَيْتَ، وَلا مُعْطِيَ لِمَا مَنَعْتَ، وَلا يَنْفَعُ ذَا الْجَدِّ مِنْكَ الجد.',
          1,
          0),
    );
    return kneelUpAthkars;
  }

  List<SubCategoryDetails> populateProstratingAthkars() {
    List<SubCategoryDetails> prostratingAthkars =
        new List<SubCategoryDetails>();
    prostratingAthkars.add(
      new SubCategoryDetails('سُبْحَانَ رَبِّيَ الْأَعْلَى.', 3, 0),
    );
    prostratingAthkars.add(
      new SubCategoryDetails(
          'سبحانَكَ اللَّهمَّ ربَّنا وبحمدِكَ اللَّهمَّ اغفر ليِ.', 1, 0),
    );
    prostratingAthkars.add(
      new SubCategoryDetails(
          'سُّبُّوحٌ، قُدُوسٌ، رَبُ الملائكة والرُّوح.', 1, 0),
    );
    prostratingAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ لَكَ سَجَدْتُ وَبِكَ آمَنْتُ، وَلَكَ أَسْلَمْت، سَجَدَ وَجْهِي لِلَّذِي خَلَقَه، وَصَوَّرَه، وَشَقَّ سَمْعَهُ وَبَصَرَه، تَبَارَكَ اللَّهُ أَحْسَنُ الْخَالِقِين.',
          1,
          0),
    );
    prostratingAthkars.add(
      new SubCategoryDetails(
          'سُبْحَانَ ذِي الجَبَرُوت، وَالمَلَكُوت، وَالكِبْرِيَاء، وَالعَظَمَةِ.',
          1,
          0),
    );
    prostratingAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اغْفِرْ لي ذَنْبِي كُلَّه، دِقَّهُ وَجِلَّهُ، وَأَوَّلَهُ وَآخِرَه وَعَلاَنِيَتَهُ وَسِرَّهُ.',
          1,
          0),
    );
    prostratingAthkars.add(
      new SubCategoryDetails(
          'اللهُمَّ إني أَعُوذُ بِرِضَاكَ مِنْ سَخَطِكَ، وَبِمُعَافَاتِكَ مِنْ عُقُوبَتِكَ، وَأَعُوذُ بِكَ مِنْكَ، لَا أُحْصِي ثَنَاءً عَلَيْكَ أَنْتَ كَمَا أَثْنَيْتَ عَلَى نَفْسِكَُ.',
          1,
          0),
    );

    return prostratingAthkars;
  }

  List<SubCategoryDetails> populateBetweenProstratingAthkars() {
    List<SubCategoryDetails> betweenProstratingAthkars =
        new List<SubCategoryDetails>();
    betweenProstratingAthkars.add(
      new SubCategoryDetails('ربِّ اغْفِرْ لِي، ربِّ اغْفِرْ لِي.', 1, 0),
    );
    betweenProstratingAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اغْفِرْ لِي، وَارْحَمْنِي، وَاهْدِنِي، وَاجْبُرْنِي، وَعَافِنِي، وَارْزُقْنِي، وَارْفَعْنِي.',
          1,
          0),
    );
    return betweenProstratingAthkars;
  }

  List<SubCategoryDetails> populatePrayersProstratingAthkars() {
    List<SubCategoryDetails> prayersProstratingAthkars =
        new List<SubCategoryDetails>();
    prayersProstratingAthkars.add(
      new SubCategoryDetails(
          'سَجَدَ وَجْهِيَ للَّذِي خَلَقَهُ، وَشَقَّ سَمْعَهُ وبَصَرَهُ، بِحَوْلِهِ وَقُوَّتِهِ، (فَتَبَارَكَ اللَّهُ أَحْسَنُ الْـخَالِقِينَ).',
          1,
          0),
    );
    prayersProstratingAthkars.add(
      new SubCategoryDetails(
          'اللَّهمَّ اكتُب لي بِها عندَكَ أجرًا، وضَع عنِّي بِها وزرًا، واجعَلها لي عندَكَ ذُخرًا، وتقبَّلها منِّي كما تقبَّلتَها من عبدِكَ داودَ.',
          1,
          0),
    );
    return prayersProstratingAthkars;
  }

  List<SubCategoryDetails> populateTashahudAthkars() {
    List<SubCategoryDetails> tashahudAthkars = new List<SubCategoryDetails>();
    tashahudAthkars.add(
      new SubCategoryDetails(
          'التَّحِيَّاتُ لِلَّه، وَالصَّلَوات، وَالطَّيِّبَاتُ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُه، السَّلَامُ عَلَيْنَا وَعَلَى عِبَادِ اللَّهِ الصَّالِحِينَ. أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ.',
          1,
          0),
    );
    return tashahudAthkars;
  }

  List<SubCategoryDetails> populateAfterTashahudAthkars() {
    List<SubCategoryDetails> afterTashahudAthkars =
        new List<SubCategoryDetails>();
    afterTashahudAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ، كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيم وَعَلَى آلِ إِبْرَاهِيمَ، إِنَّكَ حَمِيدٌ مَجِيدٌ، اللَّهُمّ بَارك عَلَى مُحَمَّد وَعَلَى آلِ مُحَمَّدٍ، كَمَا بَارَكْتَ عَلَى إِبْرَاهِيم وَعَلَى آلِ إِبْرَاهِيمَ، إِنَّكَ حَمِيدٌ مَجِيد.',
          1,
          0),
    );
    afterTashahudAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى أَزْوَاجِهِ وَذُرِّيَّتِهِ، كَمَا صَلَّيْتَ عَلَى آل إِبْرَاهِيم. وبَارِك عَلَى مُحَمَّدٍ وَعَلَى أَزْوَاجِهِ وَذُرِّيَّتِه، كَمَا بَارِكتَ عَلَى آل إِبْرَاهِيم. إِنَّكَ حَمِيدٌ مَجِيد.',
          1,
          0),
    );
    return afterTashahudAthkars;
  }

  List<SubCategoryDetails> populateAfterTashahudBeforeSalamAthkars() {
    List<SubCategoryDetails> afterTashahudforeSalamAthkars =
        new List<SubCategoryDetails>();
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنَّي أَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ، و مِنْ عَذَابِ جَهَنَّمَ، وَ مِنْ فِتْنَةِ الْمَحْيَا وَالْمَمَات، و مِنْ شَرِّ فِتْنَةِ الْمَسِيحِ الدَّجَّالِ.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنَّي أَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ، وأَعُوذُ بِكََ مِنْ فِتْنَةِ الْمَسِيحِ الدَّجَّال، وأَعُوذُ بِكََ مِنْ فِتْنَةِ الْمَحْيَا وَالْمَمَات. اللَّهُمَّ إِنَّي أَعُوذُ بِكَ من المَأثَمِ و المَغرَم. ',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهمَّ إِنِّي ظَلَمْتُ نَفْسِي ظُلْمًا كثِيرًا، وَلا يَغْفِر الذُّنوبَ إِلاَّ أَنْتَ، فَاغْفِر لي مغْفِرَةً مِن عِنْدِكَ وَارحَمْني إِنَّكَ أَنْتَ الْغَفور الرَّحِيم.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اغْفِرْ لِي مَا قَدَّمْتُ، وَمَا أَخَّرْتُ، وَمَا أَسْرَرْتُ، وَمَا أَعْلَنْتُ، وَمَا أَسْرَفْتُ، وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّي. أَنْتَ الْمُقَدِّمُ وَأَنْتَ الْمُؤَخِّرُ لاَ إِلَهَ إِلاَّ أَنْتَ.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ، وَشُكْرِكَ، وَحُسْنِ عِبَادَتِكَ.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنِّي أعُوذُ بِكَ مِن البُخْلِ، وَأَعوذُ بِكَ مِن الجُبْنِ، وَأعُوذُ بِكَ مِن أنْ أُرَدَّ إِلَى أَرْذَلِ العُمُرِ، وَأعُوذُ بِكَ مِنْ فِتْنَةِ الدُّنْيَا وعَذَابِ القَبْرِ.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْجَنَّةَ وَأَعُوذُ بِكَ مِنَ النَّارِ.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ بِعِلْمِكَ الْغَيْبَ وَقُدْرَتِكَ عَلَى الْخَلْق أَحْيِنِي مَا عَلِمْتَ الْحَيَاةَ خَيْرًا لِي وَتَوَفَّنِي إِذَا عَلِمْتَ الْوَفَاةَ خَيْرًا لِي، اللَّهُمَّ إِنِّي أَسْأَلُكَ خَشْيَتَكَ فِي الْغَيْبِ وَالشَّهَادَةِ، وَأَسْأَلُكَ كَلِمَةَ الْحَقِّ فِي الرِّضَا وَالْغَضَبِ، وَأَسْأَلُكَ الْقَصْدَ فِي الْغِنَى وَالْفَقْرِ، وَأَسْأَلُكَ نَعِيمَاً لاَ يَنْفَدُ، وأَسْأَلُكَ قُرَّةَ عَيْنٍ لاَ تَنْقَطِعْ، وَأَسْأَلُكَ الرِّضَا بَعَدَ الْقَضَاءِ، وَأَسْأَلُكَ بَرْدَ الْعَيْشِ بَعْدَ الْمَوْتِ، وَأَسْأْلُكَ لَذَّةَ النَّظَرِ إلَى وَجْهِكَ، وَالشَّوْقَ إِلَى لِقَائِكَ، فِي غَيْرِ ضَرَّاءَ مُضِرَّةٍ، وَلاَ فِتْنَةٍ مُضِلَّةٍ، اللَّهُمَّ زَيِّنَّا بِزِينَةِ الإِيمَانِ، وَاجْعَلْنَا هُدَاةً مُهْتَدِينَ.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللهم إني أسألك يا الله بأنك الواحد الأحد الصمد الذي لم يلد ولم يولد ولم يكن له كفواً أحد أن تغفر لي ذنوبي إنك أنت الغفور الرحيم.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّيْ أسْألُكَ بِأنَّ لَكَ الْحَمْدُ لَا إِلَهَ إِلَّا أنْتَ وَحْدَكَ لَا شَرِيْكَ لَكَ، الْمَنَّانُ، يَا بَدِيعَ السَّمَوَاتِ وَالْارْض يَا ذَا الْجَلالِ وَالإِكْرَامِ، يَا حَيُّ يَا قَيُّومُ، إِنِّي أَسْأَلُكَ الْجَنَّةَ وَأَعُوذُ بِكَ مِنَ النَّارِ.',
          1,
          0),
    );
    afterTashahudforeSalamAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي أَسْأَلُكَ بِأَنِّي أَشْهَدُ أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلَّا أَنْتَ، الأَحَدُ الصَّمَد الَّذِي لَمْ يَلِدْ وَلَمْ يُولَدْ وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ.',
          1,
          0),
    );
    return afterTashahudforeSalamAthkars;
  }

  List<SubCategoryDetails> populateAfterPrayAthkars() {
    List<SubCategoryDetails> afterPrayAthkars = new List<SubCategoryDetails>();
    afterPrayAthkars.add(
      new SubCategoryDetails(
          'أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله. اللّهُـمَّ أَنْـتَ السَّلامُ، وَمِـنْكَ السَّلام، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام.',
          1,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          'لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد.',
          1,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          'لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون.',
          1,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          'سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر.', 33, 0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير.',
          1,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          '(قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ).',
          1,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          '(قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ).',
          1,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          '(قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ).',
          1,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          '(اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ).',
          1,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير. عَشْر مَرّات بَعْدَ المَغْرِب وَالصّـبْح.',
          10,
          0),
    );
    afterPrayAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـبا، وَعَمَـلاً مُتَقَـبَّلاً (مرة واحدة بَعْد السّلامِ من صَلاةِ الفَجْر).',
          1,
          0),
    );
    return afterPrayAthkars;
  }

  List<SubCategoryDetails> populateEstekharaAthkars() {
    List<SubCategoryDetails> estekharaAthkars = new List<SubCategoryDetails>();
    estekharaAthkars.add(
      new SubCategoryDetails(
          'قال جابر بن عبد الله رضي الله عنهما: كان رسول الله ﷺ يُعلمنا الاستخارة في الأمور كلها كما يعلمُنا السورة من القرآن، يقول: (إذا هم أحدكم بالأمر فليركع ركعتين من غير الفريضة ثم ليقل: اللهم إني أستخيرك بعلمك، وأستقدرك بقدرتك، وأسألك من فضلك العظيم، فإنك تقدِرُ ولا أقدِرُ، وتعلم ولا أعلم، وأنت علام الغيوب، اللهم إن كنت تعلم أن هذا الأمر -يسمي حاجته- خير لي في ديني ومعاشي وعاقبة أمري-أو قال: عاجلة وآجله- فاقدره لي ويسره لي، ثم بارك لي فيه، وإن كنت تعلم أن هذا الأمر شر لي في ديني ومعاشي وعاقبة أمري-أو قال: عاجله وآجله- فاصرفه عني واصرفني عنه واقدر لي الخير حيث كان، ثم ارضني به). \n وما ندم من استخار الخالق، وشاور المخلوقين المؤمنين وتثبت في أمره، فقد قال سبحانه: {وَشَاوِرْهُمْ فِي الأَمْرِ فَإِذَا عَزَمْتَ فَتَوَكَّلْ عَلَى اللّهِ}',
          1,
          0),
    );
    return estekharaAthkars;
  }

  List<SubCategoryDetails> populateMorningAthkars() {
    List<SubCategoryDetails> morningAthkars = new List<SubCategoryDetails>();
    morningAthkars.add(
      new SubCategoryDetails(
          '(اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْن أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ).',
          1,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          '(قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ).',
          3,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          '(قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ).',
          3,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          '(قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ).',
          3,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر.',
          1,
          0),
    );

    morningAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ بِكَ أَصْبَحْنَا وَبِكَ أَمْسَيْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْك النُّشُورُ.',
          1,
          0),
    );

    morningAthkars.add(
      new SubCategoryDetails(
          'اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْت، خَلَقْتَنـي وَأَنا عَبْـدُك، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْت.َ',
          1,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك، وَمَلَائِكَتَك، وَجَمـيعَ خَلْـقِك، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك.',
          4,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر.',
          1,
          0),
    );

    morningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ عافِـني في بَدَنـي، اللّهُـمَّ عافِـني في سَمْـعي، اللّهُـمَّ عافِـني في بَصَـري، لا إلهَ إلاّ أَنْـت. اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر، وَالفَـقْر، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر، لا إلهَ إلاّ أَنْـتَ.',
          3,
          0),
    );

    morningAthkars.add(
      new SubCategoryDetails(
          'حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم.',
          7,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي، وَمِن فَوْقـي، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي.',
          1,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِه، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم.',
          1,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم.',
          3,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ ﷺ نَبِيّـا.',
          3,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَين.',
          1,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم، فَـتْحَهُ، وَنَصْـرَه، وَنـورَهُ وَبَـرَكَتَـه، وَهُـداهُ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَه.',
          1,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِين.',
          1,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails('سُبْحـانَ اللهِ وَبِحَمْـدِه.', 100, 0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الملك وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ.',
          100,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه، وَرِضـا نَفْسِـه، وَزِنَـةَ عَـرْشِـه، وَمِـدادَ كَلِمـاتِـه.',
          3,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلاً.',
          1,
          0),
    );
    morningAthkars.add(
      new SubCategoryDetails('أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْه.ِ', 100, 0),
    );
    morningAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد.',
          10,
          0),
    );
    return morningAthkars;
  }

  List<SubCategoryDetails> populateEveningAthkars() {
    List<SubCategoryDetails> eveningAthkars = new List<SubCategoryDetails>();
    eveningAthkars.add(
      new SubCategoryDetails(
          '(اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْن أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ).',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          '(قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ).',
          3,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          '(قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ).',
          3,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          '(قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ).',
          3,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا، رَبِّ أَعـوذ ُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبر.',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْـبَحْنا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ المصِير.',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ، خَلَقْتَنـي وَأَنا عَبْـدُك، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ.',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك، وَمَلَائِكَتَكَ، وَجَمـيعَ خَلْـقِك، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك.',
          4,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ ما أَمسى بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر.',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ عافِـني في بَدَنـي، اللّهُـمَّ عافِـني في سَمْـعي، اللّهُـمَّ عافِـني في بَصَـري، لا إلهَ إلاّ أَنْـتَ. اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر، وَالفَـقْر، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر، لا إلهَ إلاّ أَنْـتَ.',
          3,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم.',
          7,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ و َالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي، وَمِن فَوْقـي، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي.',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِه، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم.',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم.',
          3,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ ﷺ نَبِيّـا.',
          3,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَين.',
          3,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'أَمْسَيْنا وَأَمْسَى الْملْكُ للهِ رَبِّ الْعَالميْنِ، اللَّهُمَّ إِنَّي أسْأَلُكَ خَيْرَ هَذَه اللَّيْلَةِ فَتْحَهَا ونَصْرَهَا، ونُوْرَهَا وبَرَكَتهَا، وَهُدَاهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فيهِا وَشَرَّ مَا بَعْدَها.',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'أَمْسَيْنَا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ.',
          1,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails('سُبْحـانَ اللهِ وَبِحَمْـدِه.', 100, 0),
    );
    eveningAthkars.add(
      new SubCategoryDetails('أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيهِ.', 100, 0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق.',
          3,
          0),
    );
    eveningAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد.',
          10,
          0),
    );
    return eveningAthkars;
  }

  List<SubCategoryDetails> populateSleepingAthkars() {
    List<SubCategoryDetails> sleepingAthkars = new List<SubCategoryDetails>();
    sleepingAthkars.add(
      new SubCategoryDetails(
          'يجمع كفيه ثم ينفث فيهما والقراءة فيهما‏:‏ ‏{قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَد‏}‏ و ‏{قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَد}‏ و ‏{قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاس}‏ ثم يمسح بهما ما استطاع من جسده يبدأ بهما على رأسه ووجه وما أقبل من جسده.',
          3,
          0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          '(اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.)',
          1,
          0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          '(آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالمؤمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ المصيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ.)',
          1,
          0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          'بِاسْمِكَ رَبِّـي وَضَعْـتُ جَنْـبي، وَبِكَ أَرْفَعُـه، فَإِن أَمْسَـكْتَ نَفْسـي فارْحَـمْها، وَإِنْ أَرْسَلْتَـها فاحْفَظْـها بِمـا تَحْفَـظُ بِه عِبـادَكَ الصّـالِحـين.',
          1,
          0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ إِنَّـكَ خَلَـقْتَ نَفْسـي وَأَنْـتَ تَوَفّـاهـا لَكَ ممَـاتـها وَمَحْـياها، إِنْ أَحْيَيْـتَها فاحْفَظْـها، وَإِنْ أَمَتَّـها فَاغْفِـرْ لَـها. اللّهُـمَّ إِنَّـي أَسْـأَلُـكَ العـافِـيَة.',
          1,
          0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ قِنـي عَذابَـكَ يَـوْمَ تَبْـعَثُ عِبـادَك.', 3, 0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails('بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا.', 1, 0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails('سُبْحَانَ اللَّهِ.', 33, 0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails('الْحَمْدُ لِلَّهِ.', 33, 0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails('اللَّهُ أَكْبَرُ.', 34, 0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          ' اللَّهُمَّ رَبَّ السَّمَوَاتِ السَّبْعِ، وَرَبَّ الْعَرْشِ الْعَظِيمِ، رَبَّنَا وَرَبَّ كُلِّ شَيْءٍ، فَالِقَ الْحَبِّ وَالنَّوَى، وَمُنْزِلَ التَّوْرَاةِ وَالْإِنْجِيلِ وَالْفُرْقَانِ، أَعُوذُ بِكَ مِنْ شَرِّ كُلِّ شَيْءٍ أَنْتَ آخِذٌ بِنَاصِيَتِهِ، اللَّهُمَّ أَنْتَ الْأَوَّلُ فَلَيْسَ قَبْلَكَ شَيْءٌ، وَأَنْتَ الْآخِرُ فَلَيْسَ بَعْدَكَ شَيْءٌ، وَأَنْتَ الظَّاهِرُ فَلَيْسَ فَوْقَكَ شَيْءٌ، وَأَنْتَ الْبَاطِنُ فَلَيْسَ دُونَكَ شَيْءٌ، اقْضِ عَنَّا الدَّيْنَ وَأَغْنِنَا مِنَ الْفَقْرِ.',
          1,
          0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          'الـحَمْدُ للهِ الَّذي أَطْـعَمَنا وَسَقـانا، وَكَفـانا، وَآوانا، فَكَـمْ مِمَّـنْ لا كـافِيَ لَـهُ وَلا مُـؤْوي.',
          1,
          0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ عالِـمَ الغَـيبِ وَالشّـهادةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كُـلِّ شَـيءٍ وَمَليـكَه، أَشْهـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي، وَمِن شَـرِّ الشَّيْـطانِ وَشِـرْكِه، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم.',
          1,
          0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails('يقرأ: سورة السّجدة و سورة الْمُلْك.', 1, 0),
    );
    sleepingAthkars.add(
      new SubCategoryDetails(
          'اللّهُـمَّ أَسْـلَمْتُ نَفْـسي إِلَـيْكَ، وَفَوَّضْـتُ أَمْـري إِلَـيْكَ، وَوَجَّـهْتُ وَجْـهي إِلَـيْكَ، وَأَلْـجَـاْتُ ظَهـري إِلَـيْكَ، رَغْبَـةً وَرَهْـبَةً إِلَـيْكَ، لا مَلْجَـأَ وَلا مَنْـجـا مِنْـكَ إِلاّ إِلَـيْكَ، آمَنْـتُ بِكِتـابِكَ الّـذي أَنْزَلْـتَ وَبِنَبِـيِّـكَ الّـذي أَرْسَلْـت.',
          1,
          0),
    );
    return sleepingAthkars;
  }

  List<SubCategoryDetails> populateWakefulnessAthkars() {
    List<SubCategoryDetails> wakefulnessAthkars =
        new List<SubCategoryDetails>();
    wakefulnessAthkars.add(
      new SubCategoryDetails(
          'لا إلهَ إلَّا اللهُ الواحدُ القهَّار، ربُّ السَّمواتِ والأرضِ وما بينَهما العزيزُ الغفَّارُ.',
          1,
          0),
    );
    return wakefulnessAthkars;
  }

  List<SubCategoryDetails> populateNightmareAthkars() {
    List<SubCategoryDetails> nightmareAthkars = new List<SubCategoryDetails>();
    nightmareAthkars.add(
      new SubCategoryDetails(
          'أَعُوذُ بِكَلِمَـاتِ اللَّهِ التَّامَّات مِنْ غَضَبِهِ وَعِقَابِهِ، وشَرِّ عِبَادِهِ، وَمِنْ هَمَزَاتِ الشَّيَاطِين وأنْ يَحْضُرُونِ.',
          1,
          0),
    );
    return nightmareAthkars;
  }

  List<SubCategoryDetails> populateSeeingDreamAthkars() {
    List<SubCategoryDetails> seeingDreamAthkars =
        new List<SubCategoryDetails>();
    seeingDreamAthkars.add(
      new SubCategoryDetails('يَنْفُثُ عَنْ يَسَارِهَ.', 3, 0),
    );
    seeingDreamAthkars.add(
      new SubCategoryDetails(
          'يستعيذُ باللهِ مِنَ الشَّيْطَانِ، ومِنْ شَرِّ مَا رَأَى.', 3, 0),
    );
    seeingDreamAthkars.add(
      new SubCategoryDetails('لا يحدث بها أحداً.', 1, 0),
    );
    seeingDreamAthkars.add(
      new SubCategoryDetails(
          'يتحَوَّلُ عَنْ جَنْبِهِ الذي كَانَ عَلَيْهِ.', 1, 0),
    );
    seeingDreamAthkars.add(
      new SubCategoryDetails('يَقومُ يُصَلِّي إنْ أرَادَ ذَلِكَِ.', 1, 0),
    );
    return seeingDreamAthkars;
  }

  List<SubCategoryDetails> populateAlwaterAthkars() {
    List<SubCategoryDetails> alwaterAthkars = new List<SubCategoryDetails>();
    alwaterAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اهْدِنِي فِيمَنْ هَدَيْتَ، وَعَافِنِي فِيمَنْ عَافَيْتَ، وَتَوَلَّنِي فِيمَنْ تَوَلَّيْتَ، وَبَارِكْ لِي فِيمَا أَعْطَيْتَ، وَقِنِي شَر ما قْضَيْتَ، فإنك  تَقضي ولا يُقضى عَليك، إِنَّهُ لا يَذِلُّ مَنْ وَالَيْتَ، [ولا يعزُّ من عاديت]، تَبَارَكْتَ رَبَّنَا وَتَعَالَيت.',
          1,
          0),
    );
    alwaterAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إني أعُوذُ برِضَاكَ مِن سَخَطِكَ، وبِمُعَافَاتِكَ مِن عُقُوبَتِكَ، وأَعُوذُ بكَ مِنْك، لا أُحْصِي ثَنَاءً عَلَيْكَ، أنْتَ كما أثْنَيْتَ علَى نَفْسِك.',
          1,
          0),
    );
    alwaterAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إيَّاكَ نَعْبُدُ، ولَكَ نُصَلِّي وَنَسْجُدُ، وَإلَيْكَ نَسْعَى وَنَحْفِدُ، نَرْجُو رَحْمَتَكَ، ونَخْشَى عَذَابَكَ، إنَّ عَذَابَكَ بالكَافِريْنَ مُلْحَقٌ. اللَّهُمَّ إنَّا نَسْتَعِينُكَ، ونَسْتَغْفِرُكَ، وَنُثْنِي عَلَيْكَ الـخَيْرَ، وَلا نَكْفُرُكَ، وَنُؤْمِنُ بِكَ، وَنخْضَعُ لَكَ، وَنخْلَعُ مَنْ يَكْفُرُكَ.',
          1,
          0),
    );
    return alwaterAthkars;
  }

  List<SubCategoryDetails> populateAlhamAndAlhozonAthkars() {
    List<SubCategoryDetails> andAlhozonAthkars = new List<SubCategoryDetails>();
    andAlhozonAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي عَبْدُكَ، ابْنُ عَبْدِكَ، ابْنُ أَمَتِكَ، نَاصِيَتِي بِيَدِكَ، مَاضٍ فِيَّ حُكْمُكَ، عَدْلٌ فِيَّ قَضَاؤُكَ، أَسْأَلُكَ بِكُلِّ اسْمٍ هُوَ لَكَ سَمَّيْتَ بِهِ نَفْسَكَ، أَوْ أَنْزَلْتَهُ فِي كِتَابِكَ، أَوْ عَلَّمْتَهُ أَحَدًا مِنْ خَلْقِكَ، أَوِ اسْتَأْثَرْتَ بِهِ فِي عِلْمِ الْغَيْبِ عِنْدَكَ، أَنْ تَجْعَلَ الْقُرْآنَ رَبِيعَ قَلْبِي، وَنُورَ صَدْرِي، وَجَلَاءَ حُزْنِي، وَذَهَابَ هَمِّي.',
          1,
          0),
    );
    andAlhozonAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ، وَالْعَجْزِ وَالْكَسَلِ، وَالْبُخْلِ وَالْجُبْنِ، وَضَلَعِ الدَّيْنِ، وَغَلَبَةِ الرِّجَالِ.',
          1,
          0),
    );
    return andAlhozonAthkars;
  }

  List<SubCategoryDetails> populateAfterAlwaterAthkars() {
    List<SubCategoryDetails> afterAlwaterAthkars =
        new List<SubCategoryDetails>();
    afterAlwaterAthkars.add(
      new SubCategoryDetails(
          'سبحانَ الملكِ القدُّوس، ثلاث مرات والثالثة يجهر بها ويمد بها صوته [رَبُّ الْمَلَائِكَةِ وَالرُّوحِ].',
          3,
          0),
    );
    return afterAlwaterAthkars;
  }

  List<SubCategoryDetails> populateSadnessAthkars() {
    List<SubCategoryDetails> sadnessAthkars = new List<SubCategoryDetails>();
    sadnessAthkars.add(
      new SubCategoryDetails(
          'اللهمَّ إني عبدُك، ابنُ عبدِك، ابنُ أمَتِك، ناصيَتي بيدِك، ماضٍ فيَّ حُكمُك، عَدْلٌ فيَّ قضاؤُك، أسألُك بكلِّ اسمٍ هو لك، سميتَ به نفسَك، أو أنزلته في كتابِك، أوْ علَّمْتَه أحدًا مِنْ خلقِك، أو استأثرتَ به في علمِ الغيبِ عندَك، أنْ تجعلَ القرآنَ ربيعَ قلبي، ونورَ صدري، وجلاءَ حُزني، وذهابَ هَمِّي.',
          1,
          0),
    );
    sadnessAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ، وَالْعَجْزِ وَالْكَسَلِ، وَالْبُخْلِ وَالْجُبْنِ، وَضَلَعِ الدَّيْنِ وَغَلَبَةِ الرِّجَالِ.',
          1,
          0),
    );
    return sadnessAthkars;
  }

  List<SubCategoryDetails> populateAlkarbAthkars() {
    List<SubCategoryDetails> alkarbAthkars = new List<SubCategoryDetails>();
    alkarbAthkars.add(
      new SubCategoryDetails(
          'لَا إِلَهَ إِلَّا اللَّهُ الْعَظِيمُ الْحَلِيمُ، لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ، لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَوَاتِ، وَرَبُّ الْأَرْضِ، وَرَبُّ الْعَرْشِ الْكَرِيم.',
          1,
          0),
    );
    alkarbAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ رَحْمَتَكَ أَرْجُو فَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ، وَأَصْلِحْ لِي شَأْنِي كُلَّهُ، لَا إِلَهَ إِلَّا أَنْتَ.',
          1,
          0),
    );
    alkarbAthkars.add(
      new SubCategoryDetails(
          'لا إِلَهَ إِلا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ.',
          1,
          0),
    );
    alkarbAthkars.add(
      new SubCategoryDetails('اللهُ اللهُ ربِّي لا أُشرِكُ به شيئًا.', 1, 0),
    );
    return alkarbAthkars;
  }

  List<SubCategoryDetails> populateFacingEnemyAthkars() {
    List<SubCategoryDetails> facingEnemyAthkars =
        new List<SubCategoryDetails>();
    facingEnemyAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنَّا نجعلُكَ في نحورِهِمْ، ونعُوذُ بِكَ مِنْ شرُورهم.',
          1,
          0),
    );
    facingEnemyAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أنْتَ عَضُدِي، وأنْتَ نَصِيري، بِكَ أجُولُ، وَبِكَ أصُولُ، وَبِكَ أقَاتِلَُ.',
          1,
          0),
    );
    facingEnemyAthkars.add(
      new SubCategoryDetails('حَسْبُنَا اللهُ وَنِعْمَ الْوَكِيلُ.', 1, 0),
    );
    return facingEnemyAthkars;
  }

  List<SubCategoryDetails> populateFearOfFacingEnemyAthkars() {
    List<SubCategoryDetails> fearOfFacingEnemyAthkars =
        new List<SubCategoryDetails>();
    fearOfFacingEnemyAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ رَبَّ السَّـمَواتِ السَّبْعِ، ورَبَّ العَرْشِ العَظِيمِ، كُنْ لِي جَاراً مِنْ فُلاَنِ بْنِ فُلانٍ، وأحْزَابِهِ مِنْ خَلائِقِكَ؛ أنْ يَفْرُطَ عَلَيَّ أَحدٌ مِنْهُمْ أوْ يَطْغَى، عَزَّ جَارُكَ، وَجَلَّ ثَنُاؤُكَ، ولا إِلَهَ إلاَّ أنْتَ.',
          1,
          0),
    );
    fearOfFacingEnemyAthkars.add(
      new SubCategoryDetails(
          'اللهُ أكْبَرُ، اللهُ أعَزُّ مِنْ خَلْقِهِ جَمِيعاً، اللهُ أعَزُّ مِـمَّا أخَافُ وأحْذَرُ، أعُوذُ باللـهِ الذِي لَا إِلَهَ إلاَّ هُوَ، الـمُمْسِكِ السَّـمَواتِ السَّبْعِ أنْ يَقَعْنَ عَلَى الأرْضِ إِلاَّ بإذْنِهِ، مِنْ شَرِّ عَبْدِكَ فُلانٍ، وُجُنُودِهِ وَأتْبَاعِهِ وأشْيَاعِهِ، مِنَ الجِنِّ والإنْسِ، اللَّهُمَّ كُنْ لِي جَاراً مِنْ شَرِّهِمْ، جَلَّ ثَنَاؤُكَ، وَعَزَّ جَارُكَ، وتَبَارَكَ اسْمُكَ: وَلَا إِلَهَ غَيْرُك.',
          3,
          0),
    );
    return fearOfFacingEnemyAthkars;
  }

  List<SubCategoryDetails> populatePrayersOnEnemyAthkars() {
    List<SubCategoryDetails> prayersOnEnemyAthkars =
        new List<SubCategoryDetails>();
    prayersOnEnemyAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ مُنْزِلَ الْكِتَابِ، سَرِيعَ الْحِسَاب، اهْزِمِ الأَحْزَاب، اللَّهُمَّ اهْزِمْهُمْ وَزَلْزِلْهُمَْ.',
          1,
          0),
    );
    return prayersOnEnemyAthkars;
  }

  List<SubCategoryDetails> populatePrayersOnFearingGroupAthkars() {
    List<SubCategoryDetails> prayersOnFearingGroupAthkars =
        new List<SubCategoryDetails>();
    prayersOnFearingGroupAthkars.add(
      new SubCategoryDetails('اللَّهُمَّ اكْفِنِيْهِمْ بِمَا شِئْتَ.', 1, 0),
    );
    return prayersOnFearingGroupAthkars;
  }

  List<SubCategoryDetails> populatePeopleFearAthkars() {
    List<SubCategoryDetails> peopleFearAthkars = new List<SubCategoryDetails>();
    peopleFearAthkars.add(
      new SubCategoryDetails('اللَّهُمَّ اكْفِنِيْهِمْ بِمَا شِئْت.', 1, 0),
    );
    return peopleFearAthkars;
  }

  List<SubCategoryDetails> populateFaithQuestioningAthkars() {
    List<SubCategoryDetails> faithQuestioningAthkars =
        new List<SubCategoryDetails>();
    faithQuestioningAthkars.add(
      new SubCategoryDetails('يَسْتَعِيذُ بِاللّه. ينتهي عما شك فيه.', 1, 0),
    );
    faithQuestioningAthkars.add(
      new SubCategoryDetails('يقول: آمنت بالله ورسله.', 1, 0),
    );
    faithQuestioningAthkars.add(
      new SubCategoryDetails(
          'يقرأ قوله تعالى: (هُوَ الْأَوَّلُ وَالْآخِرُ وَالظَّاهِرُ وَالْبَاطِنُ وَهُوَ بِكُلِّ شَيْءٍ عَلِيمٌ).',
          1,
          0),
    );
    return faithQuestioningAthkars;
  }

  List<SubCategoryDetails> populatePaymentAthkars() {
    List<SubCategoryDetails> paymentAthkars = new List<SubCategoryDetails>();
    paymentAthkars.add(
      new SubCategoryDetails(
          'اللَّهمَّ اكْفِني بحلالِكَ عَن حَرَامِكَ وَاغْنِني بِفَضلِكَ عَمَّن سِوَاكَ.',
          1,
          0),
    );
    paymentAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ، وَالْعَجْزِ وَالْكَسَلِ، وَالْبُخْلِ وَالْجُبْنِ، وَضَلَعِ الدَّيْنِ وَغَلَبَةِ الرِّجَالِ.',
          1,
          0),
    );
    return paymentAthkars;
  }

  List<SubCategoryDetails> populateWaswasinPrayingAthkars() {
    List<SubCategoryDetails> waswasinPrayingAthkars =
        new List<SubCategoryDetails>();
    waswasinPrayingAthkars.add(
      new SubCategoryDetails(
          'أعُوذُ بِاللـهِ مِنَ الشَّيْطَانِ الرَّجِيمِ، واتْفُلْ عَلَى يَسَارِكَ (ثلاث مرات).',
          1,
          0),
    );
    return waswasinPrayingAthkars;
  }

  List<SubCategoryDetails> populateHardThingsAthkars() {
    List<SubCategoryDetails> hardThingsAthkars = new List<SubCategoryDetails>();
    hardThingsAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ لَا سَهْلَ إلاَّ مَا جَعَلْتَهُ سَهْلاً، وأنْتَ تَجْعَلُ الحَزْنَ إذَا شِئْتَ سَهْلاً.',
          1,
          0),
    );
    return hardThingsAthkars;
  }

  List<SubCategoryDetails> populateWhoDidBadThingsAthkars() {
    List<SubCategoryDetails> whoDidBadThingsAthkars =
        new List<SubCategoryDetails>();
    whoDidBadThingsAthkars.add(
      new SubCategoryDetails(
          'ما مِن عبدٍ يذنبُ ذنبًا فيُحسنُ الطُّهورَ، ثمَّ يقومُ فيُصلِّي رَكْعتينِ، ثمَّ يستغفِرُ اللَّهَ، إلَّا غفرَ اللَّهُ له.',
          1,
          0),
    );
    return whoDidBadThingsAthkars;
  }

  List<SubCategoryDetails> populateForDevilAthkars() {
    List<SubCategoryDetails> forDevilAthkars = new List<SubCategoryDetails>();
    forDevilAthkars.add(
      new SubCategoryDetails('الاستعاذة بالله منه.', 1, 0),
    );
    forDevilAthkars.add(
      new SubCategoryDetails('الأذانًُ.', 1, 0),
    );
    forDevilAthkars.add(
      new SubCategoryDetails('الأذكار وقراءة القرآن.', 1, 0),
    );
    return forDevilAthkars;
  }

  List<SubCategoryDetails> populateWeaknessAthkars() {
    List<SubCategoryDetails> weaknessAthkars = new List<SubCategoryDetails>();
    weaknessAthkars.add(
      new SubCategoryDetails('قَدَرُ اللَّهِ وَمَا شَاءَ فَعَلَ.', 1, 0),
    );
    return weaknessAthkars;
  }

  List<SubCategoryDetails> populateNewBabyAthkars() {
    List<SubCategoryDetails> newBabyAthkars = new List<SubCategoryDetails>();
    newBabyAthkars.add(
      new SubCategoryDetails(
          'بَارَكَ اللَّهُ لَكَ فِي الـمَوْهُوبِ لَكَ، وَشَكَرْتَ الوَاهِبَ، وبَلَغَ أشُدَّهُ، وَرُزِقْتَ بِرَّهُ. ويَرُدُّ عَلَيْهِ الـمُهَنَّأُ فَيَقُولُ: بَارَكَ اللَّهُ لَكَ، وبَارَكَ عَلَيْكَ، وجَزَاكَ اللَّهُ خَيْراً، ورَزَقَكَ اللَّهُ مِثْلَهُ، وأجْزَلَ ثَوَابك.',
          1,
          0),
    );
    return newBabyAthkars;
  }

  List<SubCategoryDetails> populateForKidsAthkars() {
    List<SubCategoryDetails> forKidsAthkars = new List<SubCategoryDetails>();
    forKidsAthkars.add(
      new SubCategoryDetails(
          'كانَ رسولُ اللَّهِ ﷺَ يعوِّذُ الحسنَ والحسين، يقولُ: أعيذُكُما بِكلماتِ اللَّهِ التَّامَّة مِن كلِّ شيطانٍ وَهامَّةٍ، ومن كلِّ عينٍ لامَّةٍ.',
          1,
          0),
    );
    return forKidsAthkars;
  }

  List<SubCategoryDetails> populateVisitingSickPersonAthkars() {
    List<SubCategoryDetails> visitingSickPersonAthkars =
        new List<SubCategoryDetails>();
    visitingSickPersonAthkars.add(
      new SubCategoryDetails('لا بأس طهور إن شاء الله.', 1, 0),
    );
    visitingSickPersonAthkars.add(
      new SubCategoryDetails(
          'أسأل الله العظيم رب العرش العظيم أن يشفيك.', 7, 0),
    );
    return visitingSickPersonAthkars;
  }

  List<SubCategoryDetails> populateTheBenefitOfVisitingSickPersonAthkars() {
    List<SubCategoryDetails> theBenefitOfVisitingSickPersonAthkars =
        new List<SubCategoryDetails>();
    theBenefitOfVisitingSickPersonAthkars.add(
      new SubCategoryDetails(
          'إِذَا عَادَ الرَّجُلُ أَخَاهُ الْمُسْلِمَ مَشَى فِي خِرَافَةِ الْجَنَّةِ حَتَّى يَجْلِسَ فَإِذَا جَلَسَ غَمَرَتْهُ الرَّحْمَة، فَإِنْ كَانَ غُدْوَةً صَلَّى عَلَيْهِ سَبْعُونَ أَلْفَ مَلَكٍ حَتَّى يُمْسِيَ، وَإِنْ كَانَ مَسَاءً صَلَّى عَلَيْهِ سَبْعُونَ أَلْفَ مَلَكٍ حَتَّى يُصْبِحَ.',
          1,
          0),
    );
    return theBenefitOfVisitingSickPersonAthkars;
  }

  List<SubCategoryDetails> populateDesperateAthkars() {
    List<SubCategoryDetails> desperateAthkars = new List<SubCategoryDetails>();
    desperateAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اغْفِرْ لِي وَارْحَمْنِي وَأَلْحِقْنِي بِالرَّفِيقِ الأَعْلي.',
          1,
          0),
    );
    desperateAthkars.add(
      new SubCategoryDetails(
          'جَعَلَ النَّبيّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمََ عِند مَوْتِه يُدْخِلُ يَدَيْهِ فِي المَاء فَيَمْسَحُ بِهِمَا وَجْهَهُ وَيَقُولُ: لاَ إِلَهَ إِلَّا اللَّه إِنَّ لِلْمَوْتِ سَكَرَات.',
          1,
          0),
    );
    desperateAthkars.add(
      new SubCategoryDetails(
          'لَا إِلَهَ إِلَّا اللَّهُ والله أكبر، لَا إِلَهَ إِلَّا اللَّه وحْدهُ، لَا إِلَهَ إِلَّا اللَّه وحْده لاَ شَرِيكَ لهُ، لَا إِلَهَ إِلَّا اللَّه لَهُ المُلْكُ ولَهُ الحمْدُ، لَا إِلَهَ إِلَّا اللَّه و لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِالله.',
          1,
          0),
    );
    return desperateAthkars;
  }

  List<SubCategoryDetails> populateTalqeenAlMohtaderAthkars() {
    List<SubCategoryDetails> talqeenAlMohtaderAthkars =
        new List<SubCategoryDetails>();
    talqeenAlMohtaderAthkars.add(
      new SubCategoryDetails(
          'مَنْ كَانَ آخِرُ كَلَامِهِ لَا إِلَهَ إِلَّا اللَّهُ دَخَلَ الْجَنَّةَ.',
          1,
          0),
    );
    return talqeenAlMohtaderAthkars;
  }

  List<SubCategoryDetails> populateMnOsebBmosebahAthkars() {
    List<SubCategoryDetails> mnOsebBmosebahAthkars =
        new List<SubCategoryDetails>();
    mnOsebBmosebahAthkars.add(
      new SubCategoryDetails(
          'إنَّا لِلَّهِ وإنَّا إلَيْهِ راجِعُونَ اللَّهُمَّ أْجُرْنِي في مُصِيبَتِي، وأَخْلِفْ لي خَيْرًا مِنْها.',
          1,
          0),
    );
    return mnOsebBmosebahAthkars;
  }

  List<SubCategoryDetails> populateEghmadAlMayetAthkars() {
    List<SubCategoryDetails> eghmadAlMayetAthkars =
        new List<SubCategoryDetails>();
    eghmadAlMayetAthkars.add(
      new SubCategoryDetails(
          'اللَّهمَّ اغْفِرْ لِفُلانٍ (باسْمِهِ) وارْفَعْ دَرَجَتهُ فِي الـمَهْدِيِّيْنَ، واخْلُفْهُ فِي عَقِبِهِ فِي الغَابِريْنَ، واغْفِرْ لَـنَا ولَهُ يَا رَبَّ العَالَـمِيْنَ، وافْسَحْ لَهُ فِي قَبْرِهِ وَنَوِّرْ لَهُ فِيْهِ.',
          1,
          0),
    );
    return eghmadAlMayetAthkars;
  }

  List<SubCategoryDetails> populatePrayForDeadAthkars() {
    List<SubCategoryDetails> prayForDeadAthkars =
        new List<SubCategoryDetails>();
    prayForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اغْفِرْ لَهُ وارْحَمْهُ، وعَافِهِ، واعْفُ عَنْهُ، وأكْرِمْ نُزُلَهُ، وَوَسِّعْ مُدْخَلَهُ، واغْسِلهُ بالـمَاءِ والثَّلْجِ والبَرَدِ، ونَقِّهِ مِنَ الخَطَايَا كَمَا نَقَّيْتَ الثَّوْبَ الأبْيَضَ مِنَ الدَّنَسِ، وأبْدِلْهُ دَاراً خَيْراً مِنْ دَارِهِ، وأهْلاً خَيْراً مِنْ أهْلِهِ، وزَوْجاً خَيْراً مِنْ زَوْجِهِ، وأدْخِلْهُ الجَنَّةَ، وأَعِذْهُ مِنْ عَذَابِ القَبْرِ [وَعَذَابِ النَّارِ].',
          1,
          0),
    );
    prayForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اغْفِرْ لِحَيِّنَا، وَمَيِّتِنَا، وَشَاهِدِنَا، وَغَائِبِنَا، وَصَغِيرِنَا وَكَبِيرِنَا، وَذَكَرِنَا وَأُنْثَانَا. اللَّهُمَّ مَنْ أَحْيَيْتَهُ مِنَّا فَأَحْيِهِ عَلَى الْإسْلَام، وَمَنْ تَوَفَّيْتَهُ مِنَّا فَتَوَفَّهُ عَلَى الإيمَان، اللَّهُمَّ لَا تَحْرِمْنَا أَجْرَه وَلَا تُضِلَّنَا بَعْدَهُ.',
          1,
          0),
    );
    prayForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهمَّ إنَّ فُلانَ بنَ فُلانٍ في ذمَّتِكَ، وحَبلِ جِوارِك،َ فقِهِ مِن فتنةِ القبرِ وعذابِ النَّار، وأنتَ أهلُ الوفاءِ والحقِّ. فاغفِر لَه وارحَمهُ إنَّكَ أنتَ الغفورُ الرَّحيم.',
          1,
          0),
    );
    prayForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهمَّ عَبْدُكَ وابْنُ أمْتِكَ احْتَاجَ إلى رَحْمَتِكَ، وأَنْتَ غَنِيّ عَنْ عَذَابِه، إنَّ كَانَ مُحسناً فزده في حَسَنَاتِهِ، وإنَّ كَانَ مُسيئاً فَتَجَاوزْ عَنْهُ.',
          1,
          0),
    );
    return prayForDeadAthkars;
  }

  List<SubCategoryDetails> populatePrayForDead2Athkars() {
    List<SubCategoryDetails> prayForDead2Athkars =
        new List<SubCategoryDetails>();
    prayForDead2Athkars.add(
      new SubCategoryDetails(
          'اللَّهمَّ أعِذْهُ مِنْ عَذَابِ القَبْر. \n و إن قال: اللَّهُمَّ اجْعَلْهُ فَرَطَاً وَذُخْراً لِوَالِدَيْهِ، وشَفِيعاً مُجَاباً. اللَّهُمَّ ثَقِّلْ بِهِ مَوَازِيْنَهُمَا وأعْظِمْ بهِ أُجُورَهُمَا، وألْحِقْهُ بِصَالِحِ الـمُؤْمِنينَ، واجْعَلْهُ فِي كَفَالَةِ إِبْرَاهِيمَ، وَقِهِ بِرَحْمَتِكَ عَذَابَ الجَحِيمِ، وأبْدِلْهُ دَاراً خَيْراً مِنْ دَارِهِ، وَأَهْلاً خَيْراً مِنْ أَهْلِهِ، اللَّهُمَّ اغْفِرْ لأسْلاَفِنَا، وَأَفْرَاطِنَا، وَمَنْ سَبَقَنا بالإيْمَانِ.',
          1,
          0),
    );
    prayForDead2Athkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجْعَلْهُ لَـنَا فَرَطَاً، وَسَلَفاً، وَأَجْراً.', 1, 0),
    );
    return prayForDead2Athkars;
  }

  List<SubCategoryDetails> populateAltazeyahAthkars() {
    List<SubCategoryDetails> altazeyahAthkars = new List<SubCategoryDetails>();
    altazeyahAthkars.add(
      new SubCategoryDetails(
          'إِنَّ لِلَّـهِ مَا أَخَذَ، وَلَهُ مَا أَعْطَى، وَكُلُّ شَيءٍ عِنْدَهُ بِأَجَلٍ مُسَمَّىً... فَلْتَصْبِرْ وَلْتَحْتَسب.',
          1,
          0),
    );
    altazeyahAthkars.add(
      new SubCategoryDetails(
          'أعْظَمَ اللهُ أجْرَكَ، وَأَحْسَنَ عَزَاءَكَ، وَغَفَرَ لِـمَيِّتكَ.',
          1,
          0),
    );
    return altazeyahAthkars;
  }

  List<SubCategoryDetails> populatePutDeadInGraveAthkars() {
    List<SubCategoryDetails> putDeadInGraveAthkars =
        new List<SubCategoryDetails>();
    putDeadInGraveAthkars.add(
      new SubCategoryDetails(
          'بِسْمِ اللَّـهِ، وَعَلَى سُنَّةِ رَسُولِ الله.', 1, 0),
    );
    return putDeadInGraveAthkars;
  }

  List<SubCategoryDetails> populateAfterPutDeadInGraveAthkars() {
    List<SubCategoryDetails> afterPutDeadInGraveAthkars =
        new List<SubCategoryDetails>();
    afterPutDeadInGraveAthkars.add(
      new SubCategoryDetails(
          'اللَّهُـمَّ اغْفِـرْ لَهُ اللَّهُـمَّ ثَبِّتْهُ.', 1, 0),
    );
    return afterPutDeadInGraveAthkars;
  }

  List<SubCategoryDetails> populateVisitGraveAthkars() {
    List<SubCategoryDetails> visitGraveAthkars = new List<SubCategoryDetails>();
    visitGraveAthkars.add(
      new SubCategoryDetails(
          'السَّلَامُ عَلَيْكُمْ أهْلَ الدِّيَارِ، مِنَ الـمُؤْمِنِينَ والـمُسْلِمِينَ، وَإنَّا إنْ شَاءَ اللَّهُ بِكُمْ لاحِقُونَ، [وَيَرْحَمُ اللَّهُ الـمُستَقْدِمينَ مِنَّا والـمُستأخِرينَ] أسألُ اللَّهَ لنَا وَلَكُمُ العَافِية.',
          1,
          0),
    );
    return visitGraveAthkars;
  }

  List<SubCategoryDetails> populateWindAthkars() {
    List<SubCategoryDetails> windAthkars = new List<SubCategoryDetails>();
    windAthkars.add(
      new SubCategoryDetails(
          'اللهُمَّ إِنِّي أَسْأَلُكَ خَيْرَهَا، وَأَعُوذُ بِكَ مِنْ شَرِّهَا.',
          1,
          0),
    );
    windAthkars.add(
      new SubCategoryDetails(
          'اللهُمَّ إِنِّي أَسْأَلُكَ خَيْرَهَا، وَخَيْرَ مَا فِيهَا، وَخَيْرَ مَا أُرْسِلَتْ بِهِ، وَأَعُوذُ بِكَ مِنْ شَرِّهَا، وَشَرِّ مَا فِيهَا، وَشَرِّ مَا أُرْسِلَتْ بِهِ.',
          1,
          0),
    );
    return windAthkars;
  }

  List<SubCategoryDetails> populateThunderAthkars() {
    List<SubCategoryDetails> thunderAthkars = new List<SubCategoryDetails>();
    thunderAthkars.add(
      new SubCategoryDetails(
          'سُبْحَانَ الَّذِي يُسَبِّحُ الرَّعْدُ بِحَمْدِهِ وَالْمَلَائِكَةُ مِنْ خِيفَتِهِ.',
          1,
          0),
    );
    return thunderAthkars;
  }

  List<SubCategoryDetails> populateAskForRainAthkars() {
    List<SubCategoryDetails> askForRainAthkars = new List<SubCategoryDetails>();
    askForRainAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أَسْقِنَا غَيْثاً مُغِيثاً مَرِيئاً مَرِيعاً، نَافِعاً غَيْرَ ضَارٍّ، عَاجِلاً غَيْرَ آجلٍ.',
          1,
          0),
    );
    askForRainAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أَغِثْنَا، اللَّهُمَّ أَغِثْنَا، اللَّهُمَّ أَغِثْنَا.',
          1,
          0),
    );
    askForRainAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اسقِ عبادَك، وبَهائمك، وانشُر رحمتَك، وأحييِ بلدَك الميِّتَ.',
          1,
          0),
    );
    return askForRainAthkars;
  }

  List<SubCategoryDetails> populateDuringRainAthkars() {
    List<SubCategoryDetails> duringRainAthkars = new List<SubCategoryDetails>();
    duringRainAthkars.add(
      new SubCategoryDetails('اللَّهُمَّ صَيِّبًا نَافِعًا.', 1, 0),
    );
    return duringRainAthkars;
  }

  List<SubCategoryDetails> populateAfterRainAthkars() {
    List<SubCategoryDetails> afterRainAthkars = new List<SubCategoryDetails>();
    afterRainAthkars.add(
      new SubCategoryDetails('مُطِرْنَا بِفَضْلِ اللَّهِ وَرَحْمتِهِ.', 1, 0),
    );
    return afterRainAthkars;
  }

  List<SubCategoryDetails> populateEsteshaAthkars() {
    List<SubCategoryDetails> esteshaAthkars = new List<SubCategoryDetails>();
    esteshaAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ حَوَالَيْنَا ولَا عَلَيْنَا. اللَّهُمَّ علَى الآكَامِ والظِّرَابِ، وبُطُونِ الأوْدِيَةِ، ومَنَابِتِ الشَّجَر.',
          1,
          0),
    );
    return esteshaAthkars;
  }

  List<SubCategoryDetails> populateSeeingCrescentAthkars() {
    List<SubCategoryDetails> seeingCrescentAthkars =
        new List<SubCategoryDetails>();
    seeingCrescentAthkars.add(
      new SubCategoryDetails(
          'اللَّهُ أَكْبَرُ، اللَّهُمَّ أَهِلَّهُ عَلَيْنَا بِالْأَمْنِ وَالْإِيمَانِ، وَالسَّلَامَةِ وَالْإِسْلَامِ، وَالتَّوْفِيقِ لِمَا يُحِبُّ رَبُّنَا وَيَرْضَى، رَبُّنَا وَرَبُّك اللَّهُ.',
          1,
          0),
    );
    return seeingCrescentAthkars;
  }

  List<SubCategoryDetails> populateFeedingFastingPersonAthkars() {
    List<SubCategoryDetails> feedingFastingPersonAthkars =
        new List<SubCategoryDetails>();
    feedingFastingPersonAthkars.add(
      new SubCategoryDetails(
          'ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ، وَثَبَتَ الْأَجْرُ إِنْ شَاءَ اللَّهُ.',
          1,
          0),
    );
    feedingFastingPersonAthkars.add(
      new SubCategoryDetails(
          'اللّـهُمَّ اِنّي أَسْأَلُكَ بِرَحْمَتِكَ الَّتي وَسِعَتْ كُلَّ شَيْءُ أَنْ تَغْفِرَ لِي.',
          1,
          0),
    );
    return feedingFastingPersonAthkars;
  }

  List<SubCategoryDetails> populateBeforeEatingFoodAthkars() {
    List<SubCategoryDetails> beforeEatingFoodAthkars =
        new List<SubCategoryDetails>();
    beforeEatingFoodAthkars.add(
      new SubCategoryDetails(
          'إِذَا أَكَلَ أَحَدكُمْ الطَعَام فَلْيَقُلْ بِسْمِ اللَّه، فَإِنْ نَسِيَ فِي أَوَّله فَلْيَقُلْ: بِسْمِ اللَّه فِي أَوَّله وَآخِره.',
          1,
          0),
    );
    beforeEatingFoodAthkars.add(
      new SubCategoryDetails(
          'مَنْ أطْعَمَهُ اللهُ الطَّعَامَ فَلْيَقُلْ: اللَّهُمَّ بَارِكْ لَنـَا فِيْهِ، وأطْعِمْنَا خَيْراً مِنْهُ، ومَنْ سَقَاهُ اللهُ لَبَناً فَلْيَقُلْ: اللَّهُمَّ بَارِكْ لَـنَا فِيْهِ، وَزِدْنَا مِنْه.',
          1,
          0),
    );
    return beforeEatingFoodAthkars;
  }

  List<SubCategoryDetails> populateAfterEatingFoodAthkars() {
    List<SubCategoryDetails> afterEatingFoodAthkars =
        new List<SubCategoryDetails>();
    afterEatingFoodAthkars.add(
      new SubCategoryDetails(
          'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنِي هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلاَ قُوَّةٍ.',
          1,
          0),
    );
    afterEatingFoodAthkars.add(
      new SubCategoryDetails(
          'الْحَمْدُ لِلَّهِ كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ، غير [مَكْفِيٍّ وَلَا] مُوَدَّعٍ وَلَا مُسْتَغْنًى عَنْهُ رَبَّنَا.',
          1,
          0),
    );
    return afterEatingFoodAthkars;
  }

  List<SubCategoryDetails> populateVisitorForHostingAthkars() {
    List<SubCategoryDetails> visitorForHostingAthkars =
        new List<SubCategoryDetails>();
    visitorForHostingAthkars.add(
      new SubCategoryDetails(
          'اللهُمَّ بَارِكْ لَهُم فيما رَزَقتهْمْ، واغْفِر لهم وارحَمْهُم.',
          1,
          0),
    );
    return visitorForHostingAthkars;
  }

  List<SubCategoryDetails> populateForGiveDrinkAthkars() {
    List<SubCategoryDetails> forGiveDrinkAthkars =
        new List<SubCategoryDetails>();
    forGiveDrinkAthkars.add(
      new SubCategoryDetails(
          'اللهُمَّ أَطْعِمْ مَنْ أطْعَمَني وأَسْقِ مَنْ سْقَاني.', 1, 0),
    );
    return forGiveDrinkAthkars;
  }

  List<SubCategoryDetails> populateForEatingWithFamilyAthkars() {
    List<SubCategoryDetails> forEatingWithFamilyAthkars =
        new List<SubCategoryDetails>();
    forEatingWithFamilyAthkars.add(
      new SubCategoryDetails(
          'أَفطَر عِنْدَكُم الصائِمون، وأكل طعامَكُمُ الأبْرارُ، وصلت عليكُمُ الملائِكَةُ.',
          1,
          0),
    );
    return forEatingWithFamilyAthkars;
  }

  List<SubCategoryDetails> populateFastingWhoDidNotEatAthkars() {
    List<SubCategoryDetails> fastingWhoDidNotEatAthkars =
        new List<SubCategoryDetails>();
    fastingWhoDidNotEatAthkars.add(
      new SubCategoryDetails(
          'إذَا دُعِيَ أَحَدُكُمْ فَلْيُجِبْ، فَإِنْ كَانَ صَائِماً فَلْيُصَلِّ وَإنْ كَانَ مُفْطِراً فَلْيَطْعَمْ. ومَعنَى فَلْيُصَل أيْ فَلْيَدْعُ.',
          1,
          0),
    );
    return fastingWhoDidNotEatAthkars;
  }

  List<SubCategoryDetails> populateFastingSaysForUnpoliteAthkars() {
    List<SubCategoryDetails> fastingSaysForUnpoliteAthkars =
        new List<SubCategoryDetails>();
    fastingSaysForUnpoliteAthkars.add(
      new SubCategoryDetails('إِنِّي صَائِم، إِنِّي صَائِم.', 1, 0),
    );
    return fastingSaysForUnpoliteAthkars;
  }

  List<SubCategoryDetails> populateNewFruitAthkars() {
    List<SubCategoryDetails> newFruitAthkars = new List<SubCategoryDetails>();
    newFruitAthkars.add(
      new SubCategoryDetails(
          'اللهُمَّ بَارِكْ لَنَا فِي ثَمَرِنَا، وَبَارِكْ لَنَا فِي مَدِينَتِنَا وَبَارِكْ لَنَا فِي صَاعِنَا، وَبَارِكْ لَنَا فِي مُدِّنَا.',
          1,
          0),
    );
    return newFruitAthkars;
  }

  List<SubCategoryDetails> populateSneezeAthkars() {
    List<SubCategoryDetails> sneezeAthkars = new List<SubCategoryDetails>();
    sneezeAthkars.add(
      new SubCategoryDetails(
          'إِذَا عَطَسَ أَحَدُكُمْ فَلْيَقُل: الْحَمْدُ لِلَّهِ، وَلْيَقُلْ لَهُ أَخُوهُ أَوْ صَاحِبُهُ: يَرْحَمُكَ اللَّه، فَإِذَا قَالَ لَهُ يَرْحَمُكَ اللَّهُ فَلْيَقُل: يَهْدِيكُمُ اللَّهُ وَيُصْلِحُ بَالَكُمْ.',
          1,
          0),
    );
    return sneezeAthkars;
  }

  List<SubCategoryDetails> populateSneezeForOtherAthkars() {
    List<SubCategoryDetails> sneezeForOtherAthkars =
        new List<SubCategoryDetails>();
    sneezeForOtherAthkars.add(
      new SubCategoryDetails('يَهْدِيكُمُ اللَّهُ وَيُصْلِحُ بَالَكُمْ.', 1, 0),
    );
    return sneezeForOtherAthkars;
  }

  List<SubCategoryDetails> populateForMarriedAthkars() {
    List<SubCategoryDetails> forMarriedAthkars = new List<SubCategoryDetails>();
    forMarriedAthkars.add(
      new SubCategoryDetails(
          'بَارَكَ اللَّهُ لَكَ، وَبَارَكَ عَلَيْك، وَجَمَعَ بَيْنَكُمَا فِي خَيْرٍ.',
          1,
          0),
    );
    return forMarriedAthkars;
  }

  List<SubCategoryDetails> populateMarriedForHimselfAthkars() {
    List<SubCategoryDetails> marriedForHimselfAthkars =
        new List<SubCategoryDetails>();
    marriedForHimselfAthkars.add(
      new SubCategoryDetails(
          'إِذَا تَزَوَّجَ أَحَدُكُمُ امْرَأَةً أو إِذَا اشْتَرَى خَادِمًا، فَلْيَقُلِ: اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَهَا وَخَيْرَ مَا جَبَلْتَهَا عَلَيْهِ وَأَعُوذُ بِكَ مِنْ شَرِّهَا و شَرِّ مَا جَبَلْتَهَا عَلَيْهِ، وَإِذَا اشْتَرَى بَعِيرًا فَلْيَأْخُذْ بِذِرْوَةِ سَنَامِهِ وَلْيَقُلْ مِثْلَ ذَلِك.',
          1,
          0),
    );
    return marriedForHimselfAthkars;
  }

  List<SubCategoryDetails> populateMarriedAthkars() {
    List<SubCategoryDetails> marriedAthkars = new List<SubCategoryDetails>();
    marriedAthkars.add(
      new SubCategoryDetails(
          'َبِسْمِ اللَّهِ، اللَّهُمَّ جَنِّبْنَا الشَّيْطَانَ، وَجَنِّبْ الشَّيْطَانَ مَا رَزَقْتَنَا.',
          1,
          0),
    );
    return marriedAthkars;
  }

  List<SubCategoryDetails> populateAngryAthkars() {
    List<SubCategoryDetails> angryAthkars = new List<SubCategoryDetails>();
    angryAthkars.add(
      new SubCategoryDetails('أعوذ بالله من الشيطان الرجيم.', 1, 0),
    );
    return angryAthkars;
  }

  List<SubCategoryDetails> populateSeeingSickAthkars() {
    List<SubCategoryDetails> seeingSickAthkars = new List<SubCategoryDetails>();
    seeingSickAthkars.add(
      new SubCategoryDetails(
          'الحمد لله الذي عافاني مما ابتلاك به، وفضلني على كثير ممن خلق تفضيلا. تُقال سرا و ليس جهرا.',
          1,
          0),
    );
    return seeingSickAthkars;
  }

  List<SubCategoryDetails> populateCouncilAthkars() {
    List<SubCategoryDetails> councilAthkars = new List<SubCategoryDetails>();
    councilAthkars.add(
      new SubCategoryDetails(
          'عن ابن عمر قال: كَانَ يُعَدُّ لِرَسُولِ اللَّهِ ﷺ فِي الْمَجْلِسِ الْوَاحِدِ مِائَةَ مَرَّةٍ  مِن قَبْلِ أنْ يَقُومَ [رَبِّ اغْفِرْ لِي وَتُبْ عَلَيَّ إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ].',
          1,
          0),
    );
    return councilAthkars;
  }

  List<SubCategoryDetails> populateAfterCouncilAthkars() {
    List<SubCategoryDetails> afterCouncilAthkars =
        new List<SubCategoryDetails>();
    afterCouncilAthkars.add(
      new SubCategoryDetails(
          'سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ، أَشْهَدُ أَنْ لا إِلَهَ إِلا أَنْت، أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ.',
          1,
          0),
    );
    return afterCouncilAthkars;
  }

  List<SubCategoryDetails> populateForOtherAthkars() {
    List<SubCategoryDetails> forOtherAthkars = new List<SubCategoryDetails>();
    forOtherAthkars.add(
      new SubCategoryDetails('وَلَكَ.', 1, 0),
    );
    return forOtherAthkars;
  }

  List<SubCategoryDetails> populateForOtherWhoDidGoodAthkars() {
    List<SubCategoryDetails> forOtherWhoDidGoodAthkars =
        new List<SubCategoryDetails>();
    forOtherWhoDidGoodAthkars.add(
      new SubCategoryDetails('جَزَاكَ الله خيراً.', 1, 0),
    );
    return forOtherWhoDidGoodAthkars;
  }

  List<SubCategoryDetails> populateForDajalAthkars() {
    List<SubCategoryDetails> dajalAthkars = new List<SubCategoryDetails>();
    dajalAthkars.add(
      new SubCategoryDetails(
          'مَنْ حَفِظَ عَشْر آيَاتٍ مِنْ أوَّلِ سُورَةِ الكَهْفِ، عُصِمَ مِنَ الدَّجَّالِ. \n والاسْتِعَاذَةُ باللـهِ مِنْ فِتْنَتِهِ، عَقِبَ التَّشَهُّدِ الأخيرِ، مِنْ كُلِّ صَلاةًٍ.',
          1,
          0),
    );
    return dajalAthkars;
  }

  List<SubCategoryDetails> populateForLoveInGoodAthkars() {
    List<SubCategoryDetails> forLoveInGoodAthkars =
        new List<SubCategoryDetails>();
    forLoveInGoodAthkars.add(
      new SubCategoryDetails('أَحَبَّكَ الَّذِي أَحْبَبْتَنِي لَهُ.', 1, 0),
    );

    return forLoveInGoodAthkars;
  }

  List<SubCategoryDetails> populateSuggestGivingMoneyAthkars() {
    List<SubCategoryDetails> suggestGivingMoneyAthkars =
        new List<SubCategoryDetails>();
    suggestGivingMoneyAthkars.add(
      new SubCategoryDetails('بَارَك اللَّهُ لَكَ فِي أهْلِكَ ومَالِكَ.', 1, 0),
    );

    return suggestGivingMoneyAthkars;
  }

  List<SubCategoryDetails> populateForWhoGiveMoneyAthkars() {
    List<SubCategoryDetails> forWhoGiveMoneyAthkars =
        new List<SubCategoryDetails>();
    forWhoGiveMoneyAthkars.add(
      new SubCategoryDetails(
          'بَارَكَ اللَّهُ لَكَ فِي أهْلِكَ وَمَالِكَ، إنَّـمَا جَزَاءُ السَّلَفِ الـحَمْدُ والأدَاءُ.',
          1,
          0),
    );

    return forWhoGiveMoneyAthkars;
  }

  List<SubCategoryDetails> populateFearAthkars() {
    List<SubCategoryDetails> fearAthkars = new List<SubCategoryDetails>();
    fearAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ أَنْ أُشْرِكَ بِكَ وَأَنَا أَعْلَمُ، وَأَسْتَغْفِرُكَ لِمَا لاَ أَعْلَمُ.',
          1,
          0),
    );

    return fearAthkars;
  }

  List<SubCategoryDetails> populateForWhoSaidAllahBlessYouAthkars() {
    List<SubCategoryDetails> forWhoSaidAllahBlessYouAthkars =
        new List<SubCategoryDetails>();
    forWhoSaidAllahBlessYouAthkars.add(
      new SubCategoryDetails('وَفِيكَ بَارَكَ اللَّهُُ.', 1, 0),
    );

    return forWhoSaidAllahBlessYouAthkars;
  }

  List<SubCategoryDetails> populateNotLikeTayarahAthkars() {
    List<SubCategoryDetails> notLikeTayarahAthkars =
        new List<SubCategoryDetails>();
    notLikeTayarahAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ لَا طَيْرَ إِلَّا طَيْرُكَ، وَلَا خَيْرَ إِلَّا خَيْرُكَ، وَلَا إِلَهَ غَيْرك.',
          1,
          0),
    );

    return notLikeTayarahAthkars;
  }

  List<SubCategoryDetails> populateRiddingAnimalAthkars() {
    List<SubCategoryDetails> riddingAnimalAthkars =
        new List<SubCategoryDetails>();
    riddingAnimalAthkars.add(
      new SubCategoryDetails(
          'بِسْمِ اللَّه، الحَمْدُلِلَّه (سُبْحانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ * وَإِنَّا إِلَى رَبِّنَا لَمُنقَلِبُونَ)، الحَمْدُلِلَّه، الحَمْدُلِلَّه، الحَمْدُلِلَّه، اللَّهُ أَكبرُ، اللَّهُ أَكبرُ، اللَّهُ أَكبرُ، سبحانَك اللَّهم إنِّي ظلمتُ نفسِي فاغفِر لي فإنَّهُ لا يغفِرُ الذُّنوبَ إلَّا أنتَ.',
          1,
          0),
    );
    return riddingAnimalAthkars;
  }

  List<SubCategoryDetails> populateTravelAthkars() {
    List<SubCategoryDetails> travelAthkars = new List<SubCategoryDetails>();
    travelAthkars.add(
      new SubCategoryDetails(
          'الله أكبر، الله أكبر، الله أكبر، (سُبْحانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ * وَإِنَّا إِلَى رَبِّنَا لمنقلبون) اللهم إنا نسألُكَ في سفرنا هذا البرَّ والتقوى، ومن العمل ما ترضى، اللهم هون علينا سفرنا هذا واطو عنا بعده، اللهم أنت الصاحب في السفر، والخليفة في الأهل، اللهم إني أعوذ بك من وعْثاءِ السفر، وكآبة المنظر، وسوء المنقلب في المال والأهل، وإذا رجع قالهن وزاد فيهن آيبون، تائبون، عابدون، لربنا حامدون.',
          1,
          0),
    );
    return travelAthkars;
  }

  List<SubCategoryDetails> populateAccessTownAthkars() {
    List<SubCategoryDetails> accessTownAthkars = new List<SubCategoryDetails>();
    accessTownAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ رَبَّ السَّمَوَاتِ السَّبْعِ وَمَا أَظْلَلْنَ، وَرَبَّ الأَرَضِينِ السَّبْعِ وَمَا أَقْلَلْن، وَرَبَّ الشَّيَاطِينِ وَمَا أَضْلَلْنَ، وَرَبَّ الرِّيَاحِ وَمَا ذَرَيْنَ. أَسْأَلُكَ خَيْرَ هَذِهِ الْقَرْيَةِ وَخَيْرَ أَهْلِهَا، وخَيْرَِّ مَا فِيهَا، وأَعُوذُ بِكَ مِنْ شَرِّهَا، وَشَرِّ أَهْلِهَا، وَشَرِّ مَا فِيهَا.',
          1,
          0),
    );
    return accessTownAthkars;
  }

  List<SubCategoryDetails> populateAccessMarketAthkars() {
    List<SubCategoryDetails> accessMarketAthkars =
        new List<SubCategoryDetails>();
    accessMarketAthkars.add(
      new SubCategoryDetails(
          'لاَ إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ المُلْكُ وَلَهُ الحَمْدُ، يُحْيي وَيُميتُ وَهُوَ حَيٌّ لا يَمُوت، بِيَدِهِ الْخَيْرُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ.',
          1,
          0),
    );
    return accessMarketAthkars;
  }

  List<SubCategoryDetails> populateBadRiddingAthkars() {
    List<SubCategoryDetails> badRiddingAthkars = new List<SubCategoryDetails>();
    badRiddingAthkars.add(
      new SubCategoryDetails('بِسْمِ اللَّـهِ.', 1, 0),
    );
    return badRiddingAthkars;
  }

  List<SubCategoryDetails> populateForWhoTravelAthkars() {
    List<SubCategoryDetails> forWhoTravelAthkars =
        new List<SubCategoryDetails>();
    forWhoTravelAthkars.add(
      new SubCategoryDetails('أستودعُكَ الله الذي لا تضيع ودائعه.', 1, 0),
    );
    return forWhoTravelAthkars;
  }

  List<SubCategoryDetails> populateForWhoTravel2Athkars() {
    List<SubCategoryDetails> forWhoTravel2Athkars =
        new List<SubCategoryDetails>();
    forWhoTravel2Athkars.add(
      new SubCategoryDetails(
          'أَسْتَودِعُ اللهَ دِيْنَكَ، وَأَمَانَتَكَ، وَخَوَاتِيمَ عَمَلِكَ.',
          1,
          0),
    );
    forWhoTravel2Athkars.add(
      new SubCategoryDetails(
          'زَوَّدَكَ اللهُ التَّقْوَى، وَغَفَرَ ذَنْبَكَ، ويَسَّرَ لَكَ الـخَيْرَ حَيْثُمَا كُنْتَ.',
          1,
          0),
    );
    return forWhoTravel2Athkars;
  }

  List<SubCategoryDetails> populateForTakbeerAndTasbeehAthkars() {
    List<SubCategoryDetails> takbeerAndTasbeehAthkars =
        new List<SubCategoryDetails>();
    takbeerAndTasbeehAthkars.add(
      new SubCategoryDetails(
          'قَال جَابِرِ رَضِيَ اللَّهُ عَنْه: كُنَّا إِذَا صَعِدْنَا كَبَّرْنَا وَإِذَا نَزَلْنَا سَبَّحْنَا.',
          1,
          0),
    );
    return takbeerAndTasbeehAthkars;
  }

  List<SubCategoryDetails> populateTravelerIfAsharAthkars() {
    List<SubCategoryDetails> travelerIfAsharAthkars =
        new List<SubCategoryDetails>();
    travelerIfAsharAthkars.add(
      new SubCategoryDetails(
          'سَمَّعَ سَامِعٌ بِـحَمْدِ اللَّـهِ، وَحُسْنِ بَلائِهِ عَلَيْنَا، رَبَّنَا صَاحِبْنَا، وَأفْضِلْ عَلَيْنَا عَائِذاً بِاللـهِ مِنَ النَّارِ.',
          1,
          0),
    );
    return travelerIfAsharAthkars;
  }

  List<SubCategoryDetails> populateStayAtTravelAthkars() {
    List<SubCategoryDetails> stayAtTravelAthkars =
        new List<SubCategoryDetails>();
    stayAtTravelAthkars.add(
      new SubCategoryDetails(
          'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّات مِنْ شَرِّ مَا خَلَق.',
          1,
          0),
    );
    return stayAtTravelAthkars;
  }

  List<SubCategoryDetails> populateBackFromTravelAthkars() {
    List<SubCategoryDetails> backFromTravelAthkars =
        new List<SubCategoryDetails>();
    backFromTravelAthkars.add(
      new SubCategoryDetails(
          'يُكَبِّرُ عَلَى كُلِّ شَرَفٍ ثَلاثَ تَكْبيرَاتٍ، ثُمَّ يَقُولُ: لَا إِلَهَ إِلاَّ اللهُ وَحْدَهُ لا شَرِيْكَ لَهُ، لَهُ الـمُلْكُ ولَهُ الـحَمْدُ، وهُوَ عَلَى كُلِّ شَيءٍ قَدِيرٌ، آيبُونَ، تَائِبُونَ، عَابِدُونَ، لِرَبِّنَا حَامِدُونَ، صَدَقَ اللهُ وَعْدَهُ، وَنَصَرَ عَبْدَهُ، وهَزَمَ الأحْزَابَ وَحْدَه.',
          1,
          0),
    );
    return backFromTravelAthkars;
  }

  List<SubCategoryDetails> populateWhatToSayOnGoodAndBadAthkars() {
    List<SubCategoryDetails> whatToSayOnGoodAndBadAthkars =
        new List<SubCategoryDetails>();
    whatToSayOnGoodAndBadAthkars.add(
      new SubCategoryDetails(
          'كَانَ ﷺ إذَا أَتَاهُ الأمْرُ يَسُرُّهُ، قَالَ: ((الـحَمْدُ للـهِ الَّذِي بِنِعْمَتهِ تَتِمُّ الصَّالِـحَاتُ))، وإذَا أتَاهُ الأمْرُ يَكْرَهُهُ، قَالَ: ((الـحَمْدُ للـهِ عَلَى كُلِّ حَالٍ)).',
          1,
          0),
    );
    return whatToSayOnGoodAndBadAthkars;
  }

  List<SubCategoryDetails> populateSalahOnProphetMuhammadAthkars() {
    List<SubCategoryDetails> salahOnProphetMuhammadAthkars =
        new List<SubCategoryDetails>();
    salahOnProphetMuhammadAthkars.add(
      new SubCategoryDetails(
          'قَالَ ﷺ مَنْ صَلَّى عَلَيَّ صَلَاةً صَلَّى اللَّهُ عَلَيْهِ بِهَا عَشْرًا.',
          1,
          0),
    );
    salahOnProphetMuhammadAthkars.add(
      new SubCategoryDetails(
          'و قَالَ ﷺ لَا تَجْعَلُوا قَبْرِي عِيدًا وَصَلُّوا عَلَيَّ، فَإِنَّ صَلَاتَكُمْ تَبْلُغُنِي حَيْثُ كُنْتُمْ.',
          1,
          0),
    );
    salahOnProphetMuhammadAthkars.add(
      new SubCategoryDetails(
          'و قَالَ ﷺ الْبخِيلُ مَنْ ذُكِرْتُ عِنْدَهُ، فَلَم يُصَلِّ علَيَّ.',
          1,
          0),
    );
    salahOnProphetMuhammadAthkars.add(
      new SubCategoryDetails(
          'و قَالَ ﷺ إنَّ للَّهِ ملائِكةً سيَّاحينَ في الأرضِ يبلِّغوني عن أمَّتيَ السَّلامَ.',
          1,
          0),
    );
    salahOnProphetMuhammadAthkars.add(
      new SubCategoryDetails(
          'و قَالَ ﷺ ما من أحدٍ يسلِّمُ عليَّ إلَّا ردَّ اللَّهُ عليَّ روحي حتَّى أردَّ عليْهِ السَّلامَ.',
          1,
          0),
    );
    return salahOnProphetMuhammadAthkars;
  }

  List<SubCategoryDetails> populateSayHiAthkars() {
    List<SubCategoryDetails> sayHiAthkars = new List<SubCategoryDetails>();
    sayHiAthkars.add(
      new SubCategoryDetails(
          'قَالَ رسول الله ﷺ لَا تَدْخُلُونَ الْجَنَّةَ حَتَّى تُؤْمِنُوا، وَلَا تُؤْمِنُوا حَتَّى تَحَابُّوا، أولا أدلكم عَلَى شَيْءٍ إِذَا فَعَلْتُمُوهُ تَحَابَبْتُمْ، أَفْشُوا السَّلَامَ بَيْنَكُمْ.',
          1,
          0),
    );
    sayHiAthkars.add(
      new SubCategoryDetails(
          'ثَلاثٌ مَنْ جَمَعَهُنَّ فَقَدْ جَمَعَ الإيْمَانَ: الإنْصَافُ مِنْ نَفْسِكَ، وبَذْلُ السَّلاَمِ للعَالَمِ، والإنْفَاقُ مِنَ الإِقْتَار.',
          1,
          0),
    );
    sayHiAthkars.add(
      new SubCategoryDetails(
          'و عَنْ عَبْدِ اللَّهِ بْنِ عَمْرٍو رَضِيَ اللَّهُ عَنْهُمَا: أَنَّ رَجُلًا سَأَلَ النَّبِيَّ ﷺَ أَيُّ الْإِسْلَامِ خَيْرٌ قَالَ: تُطْعِمُ الطَّعَامَ، وَتَقْرَأُ السَّلَامَ عَلَى مَنْ عَرَفْتَ وَمَنْ لَمْ تَعْرِف.',
          1,
          0),
    );
    return sayHiAthkars;
  }

  List<SubCategoryDetails> populateReplyToHiAthkars() {
    List<SubCategoryDetails> replyToHiAthkars = new List<SubCategoryDetails>();
    replyToHiAthkars.add(
      new SubCategoryDetails(
          'إذَا سَلَّم عَلَيْكُمْ أهْلُ الكِتَابِ؛ فَقُولُوا: وَعَلَيْكُم.',
          1,
          0),
    );
    return replyToHiAthkars;
  }

  List<SubCategoryDetails> populateAnimalSoundsAthkars() {
    List<SubCategoryDetails> animalSoundsAthkars =
        new List<SubCategoryDetails>();
    animalSoundsAthkars.add(
      new SubCategoryDetails(
          'إِذَا سَمِعْتُمْ صِيَاحَ الدِّيَكَةِ فَاسْأَلُوا اللَّهَ مِنْ فَضْلِه، فَإِنَّهَا رَأَتْ مَلَكا، وَإِذَا سَمِعْتُمْ نَهِيقَ الْحِمَارِ فَتَعَوَّذُوا بِاللَّهِ مِنَ الشَّيْطَانِ، فَإِنَّهُ رَأَى شَيْطَانا.',
          1,
          0),
    );
    return animalSoundsAthkars;
  }

  List<SubCategoryDetails> populateDogsSoundsAthkars() {
    List<SubCategoryDetails> dogsSoundsAthkars = new List<SubCategoryDetails>();
    dogsSoundsAthkars.add(
      new SubCategoryDetails(
          'إذَا سَمِعْتُمْ نُبَاحَ الكِلاَبِ ونَـهِيقَ الـحَمِيرِ بِاللَّيْلِ، فَتَعَوَّذُوا مِنْهُنَّ فإنَّهُنَّ يَرَيْنَ مَا لا تَرَوْنَ.',
          1,
          0),
    );
    return dogsSoundsAthkars;
  }

  List<SubCategoryDetails> populateToSomeoneElseAthkars() {
    List<SubCategoryDetails> toSomeoneElseAthkars =
        new List<SubCategoryDetails>();
    toSomeoneElseAthkars.add(
      new SubCategoryDetails(
          'قال ﷺ اللَّهُمَّ فَأَيُّمَا مُؤْمِنٍ سَبَبْتُهُ فَاجْعَلْ ذَلِكَ لَهُ قُرْبَةً إِلَيْكَ يَوْمَ الْقِيَامَةِ.',
          1,
          0),
    );
    return toSomeoneElseAthkars;
  }

  List<SubCategoryDetails> populateComplimentAthkars() {
    List<SubCategoryDetails> complimentAthkars = new List<SubCategoryDetails>();
    complimentAthkars.add(
      new SubCategoryDetails(
          'قال ﷺ: إذَا كانَ أَحَدُكُمْ مَادِحًا صَاحِبَهُ لا مَحَالَةَ فَلْيَقُلْ: أَحْسِبُ فُلَانًا وَاللَّهُ حَسِيبُهُ ولَا أُزَكِّي علَى اللهِ أَحَدًا أَحْسِبُهُ -إنْ كانَ يَعْلَمُ ذَاكَ- كَذَا وَكَذَا.',
          1,
          0),
    );
    return complimentAthkars;
  }

  List<SubCategoryDetails> populateMaYaqolEzaZokiAthkars() {
    List<SubCategoryDetails> maYaqolEzaZokiAthkars =
        new List<SubCategoryDetails>();
    maYaqolEzaZokiAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ لاَ تُؤَاخِذْنِي بِمَا يَقُولُونَ، وَاغْفِرْ لِي مَا لا يَعْلَمُونَ [واجعلني خيراً مما يظنون].',
          1,
          0),
    );
    return maYaqolEzaZokiAthkars;
  }

  List<SubCategoryDetails> populateTalbeyahAthkars() {
    List<SubCategoryDetails> talbeyah = new List<SubCategoryDetails>();
    talbeyah.add(
      new SubCategoryDetails(
          'لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لاَ شَرِيكَ لَكَ لَبَّيْكَ، إِنَّ الْحَمْدَ، وَالنِّعْمَةَ، لَكَ وَالْمُلْكَ، لاَ شَرِيكَ لَكَ.',
          1,
          0),
    );
    return talbeyah;
  }

  List<SubCategoryDetails> populateTakbeerhAthkars() {
    List<SubCategoryDetails> takbeer = new List<SubCategoryDetails>();
    takbeer.add(
      new SubCategoryDetails(
          'طاف النبي ﷺ بالبيت على بعير كلما أتي الركن أشار إليه بشيء عنده وكبر.',
          1,
          0),
    );
    return takbeer;
  }

  List<SubCategoryDetails> populateRokonYamaniAthkars() {
    List<SubCategoryDetails> rokonYamaniAthkars =
        new List<SubCategoryDetails>();
    rokonYamaniAthkars.add(
      new SubCategoryDetails(
          'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ.',
          1,
          0),
    );
    return rokonYamaniAthkars;
  }

  List<SubCategoryDetails> populateSafaAndMarwaAthkars() {
    List<SubCategoryDetails> safaAndMarwaAthkars =
        new List<SubCategoryDetails>();
    safaAndMarwaAthkars.add(
      new SubCategoryDetails(
          'لَمَّا دَنَا ﷺ مِنَ الصَّفَا قَرَأَ: (إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللَّهِ). أَبْدَأُ بِمَا بَدَأَ اللَّهُ بِهِ، فَبدَأ بالصَّفَا فَرَقِيَ عَليه حَتَّى رَأَى الْبَيْتَ فَاسْتَقْبَلَ الْقِبْلَةَ، فَوَحَّدَ اللَّهَ وَكَبَّرَهُ وَقَالَ: لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ، أَنْجَزَ وَعْدَهُ، وَنَصَرَ عَبْدَهُ، وَهَزَمَ الْأَحْزَابَ وَحْدَهُ، ثُمَّ دَعَا بَيْنَ ذَلِكَ. قال مثل هذا ثَلَاثَ مَرَّاتٍ، الحَديث. وَفيهِ فَفَعَلَ عَلَى الْمَرْوَةِ كَمَا فَعَلَ عَلَى الصَّفَا.',
          1,
          0),
    );
    return safaAndMarwaAthkars;
  }

  List<SubCategoryDetails> populateArafahAthkars() {
    List<SubCategoryDetails> arafahAthkars = new List<SubCategoryDetails>();
    arafahAthkars.add(
      new SubCategoryDetails(
          'خَيْرُ الدُّعَاءِ دُعَاءُ يَوْمِ عَرَفَةَ، وَخَيْرُ مَا قُلْتُ أَنَا وَالنَّبِيُّونَ مِنْ قَبْلِي: لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ.',
          1,
          0),
    );
    return arafahAthkars;
  }

  List<SubCategoryDetails> populateMasharAthkars() {
    List<SubCategoryDetails> masharAthkars = new List<SubCategoryDetails>();
    masharAthkars.add(
      new SubCategoryDetails(
          ' ركب ﷺ القصواء حتى أتى المشعر الحرام فاستقبل القبلة ( فدعاه، وكبرهُ،وهلله، ووحدهُ) فلم يزل واقفاً حتى أسفر جداً فدفع قبل أن تطلع الشمس.',
          1,
          0),
    );
    return masharAthkars;
  }

  List<SubCategoryDetails> populateStoneThrowingAthkars() {
    List<SubCategoryDetails> stoneThrowingAthkars =
        new List<SubCategoryDetails>();
    stoneThrowingAthkars.add(
      new SubCategoryDetails(
          'يُكَبِّرُ كُلَّمَا رَمَى بِحَصَاةٍ عِنْدَ الجِمَارِ الثَّلاثِ، ثُمَّ يَتَقَدَّمُ، وَيَقِفُ يَدْعُوْ مُسْتَقْبِلَ القِبْلَةِ، رَافِعاً يَدَيْهِ بَعْدَ الـجَمْرَةِ الأوْلَى والثَّانِيةِ، أمَّا جَمْرَةُ العَقَبَةِ فيَرْمِيهَا، ويُكَبِّرُ عِنْدَ كُلِّ حَصَاةٍ، ويَنْصَرِفُ، ولا يَقِفُ عِنْدَهَا.',
          1,
          0),
    );
    return stoneThrowingAthkars;
  }

  List<SubCategoryDetails> populateExclamationAthkars() {
    List<SubCategoryDetails> exclamationAthkars =
        new List<SubCategoryDetails>();
    exclamationAthkars.add(
      new SubCategoryDetails('سُبْحَانَ اللَّهِ.', 1, 0),
    );
    exclamationAthkars.add(
      new SubCategoryDetails('الله أكبر.', 1, 0),
    );
    return exclamationAthkars;
  }

  List<SubCategoryDetails> populateEasyThingsAthkars() {
    List<SubCategoryDetails> easyThingsAthkars = new List<SubCategoryDetails>();
    easyThingsAthkars.add(
      new SubCategoryDetails(
          'كَانَ النَّبِيُّ ﷺ إِذَا أَ تَاهُ أَمْرٌ يَسُرُّهُ أَوْ يُسَرُّ بِهِ خَرَّ سَاجِداً شُكْراً لِلـهِ تَبَاركَ وَتَعَالى.',
          1,
          0),
    );
    return easyThingsAthkars;
  }

  List<SubCategoryDetails> populatePainAthkars() {
    List<SubCategoryDetails> painAthkars = new List<SubCategoryDetails>();
    painAthkars.add(
      new SubCategoryDetails(
          'ضع يدَك على الذي تألَّم من جسدِك، و قُل: بسم الله.', 3, 0),
    );
    painAthkars.add(
      new SubCategoryDetails(
          'ضع يدَك على الذي تألَّم من جسدِك، و قُل: أعوذُ باللهِ و قُدرتِه من شرِّ ما أَجِدُ و أُحاذِرُ.',
          7,
          0),
    );
    return painAthkars;
  }

  List<SubCategoryDetails> populatePainInEyesAthkars() {
    List<SubCategoryDetails> painInEyesAthkars = new List<SubCategoryDetails>();
    painInEyesAthkars.add(
      new SubCategoryDetails(
          'إذَا رَأى أحَدُكُمْ مِنْ أخِيِهِ، أوْ مِنْ نَفْسِهِ، أوْ مِنْ مَالِهِ مَا يُعْجِبُهُ [فَلْيَدْعُ لَهُ بالبَرَكَةِ] فَإنَّ العَيْنَ حَقٌّ.',
          1,
          0),
    );
    return painInEyesAthkars;
  }

  List<SubCategoryDetails> populateScareAthkars() {
    List<SubCategoryDetails> scareAthkars = new List<SubCategoryDetails>();
    scareAthkars.add(
      new SubCategoryDetails('لا إلهَ إلاَّ اللَّه.', 1, 0),
    );
    return scareAthkars;
  }

  List<SubCategoryDetails> populateOdheyehAthkars() {
    List<SubCategoryDetails> odheyehAthkars = new List<SubCategoryDetails>();
    odheyehAthkars.add(
      new SubCategoryDetails(
          'بِسْمِ الله وَالله أكْبَرُ [اللَّهُمَّ  مِنْكَ ولكَ] اللَّهُمَّ تَقَبَّلْ مِنِّي.',
          1,
          0),
    );
    return odheyehAthkars;
  }

  List<SubCategoryDetails> populateProtectFromDevilAthkars() {
    List<SubCategoryDetails> protectFromDevilAthkars =
        new List<SubCategoryDetails>();
    protectFromDevilAthkars.add(
      new SubCategoryDetails(
          'أعُوذُ بِكَلِمَـاتِ اللـهِ التَّامَّاتِ، الَّتِي لا يُجَاوِزُهُنَّ بَرٌّ وَلَا فَاجِرٌ مِنْ شَرِّ مَا خَلَقَ، وبَرَأَ وذَرَأ، وَمِنْ شَرِّ مَا يَنْزِلُ مِنَ السَّمَاءِ، وَمِنْ شَرِّ مَا يَعْرُجُ فِيهَا، وَمِنْ شَرِّ مَا ذَرَأَ فِي الأرْضِ، وَمِنْ شَرِّ مَا يَخْرُجُ مِنْهَا، وَمِنْ شَرِّ فِتَنِ اللَّيْلِ والنَّهَارِ، ومِنْ شَرِّ كُلِّ طَارِقٍ إلاَّ طَارِقاً يَطْرُقُ بِخَيْرٍ يَارَحْمـن.',
          1,
          0),
    );
    return protectFromDevilAthkars;
  }

  List<SubCategoryDetails> populateEsteghfarAthkars() {
    List<SubCategoryDetails> esteghfarAthkars = new List<SubCategoryDetails>();
    esteghfarAthkars.add(
      new SubCategoryDetails(
          'قال رَسُولَ اللَّهِ ﷺَ: وَاللَّهِ إِنِّي لاَسْتَغْفِرُ اللَّهَ وَأَتُوبُ إِلَيْهِ فِي الْيَوْمِ أَكْثَرَ مِنْ سَبْعِينَ مَرَّةً.',
          70,
          0),
    );
    esteghfarAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: يَا أَيُّهَا النَّاسُ تُوبُوا إِلَى اللَّهِ فَإِنِّي أَتُوبُ فِي الْيَوْمِ إِلَيْهِ مِائَةَ مَرَّةٍ.',
          100,
          0),
    );
    esteghfarAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: من قال أَسْتَغْفِرُ اللَّهَ الْعَظِيمَ الَّذِي لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ، وَأَتُوبُ إِلَيْهِ، غفر الله لهُ، وَإِنْ كَانَ فرَّ مِنَ الزَّحْفِ.',
          1,
          0),
    );
    esteghfarAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: أقربُ ما يكونُ الربُّ من العبدِ في جوفِ الليلِ الآخرِ فإِنِ استطعْتَ أن تكونَ ممن يذكرُ اللهَ في تلْكَ الساعَةِ فكُنْ.',
          1,
          0),
    );
    esteghfarAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: أقربُ مَا يَكونُ العبْدُ مِن ربِّهِ وَهَو ساجدٌ، فَأَكثِرُوا الدُّعاءَ.',
          1,
          0),
    );
    esteghfarAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: إنَّه لَيُغَانُ علَى قَلْبِي، وإنِّي لأَسْتَغْفِرُ اللَّهَ، في اليَومِ مِئَةَ مَرَّةٍ.',
          100,
          0),
    );

    return esteghfarAthkars;
  }

  List<SubCategoryDetails> populateTasbehTahmedTakbeerAthkars() {
    List<SubCategoryDetails> tasbehTahmedTakbeerAthkars =
        new List<SubCategoryDetails>();
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'قال ﷺ: مَنْ قَالَ سُبْحَانَ اللَّهِ وَبِحَمْدِهِ فِي يَوْمٍ مِائَةَ مَرَّةٍ حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ.',
          100,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ:  مَنْ قَالَ لا إلَهَ إِلاَّ اللهُ وَحْدَهُ لا شَرِيكَ لَهُ، لَهُ المُلْكُ، وَلَهُ الحَمْد، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِير، عَشْرَ مَرَّارٍ، كَانَ كَمَنْ أعْتَقَ أرْبَعَةَ أنْفُسٍ منْ وَلَدِ إسْمَاعِيلَ.',
          10,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: كَلِمَتَانِ خَفِيفَتَانِ علَى اللِّسَانِ، ثَقِيلَتَانِ في المِيزَانِ، حَبِيبَتَانِ إلى الرَّحْمَنِ: سُبْحَانَ اللهِ وَبِحَمْدِهِ، سُبْحَانَ اللهِ العَظِيمِ.',
          1,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: لأَنْ أَقُولَ سُبْحَانَ اللهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا اللَّهُ، وَاللَّهُ أَكْبَرُ، أَحَبُّ إِلَيَّ ممَّا طَلَعَتْ عليه الشَّمْسُ.',
          1,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: أَيَعْجِزُ أَحَدُكُمْ أَنْ يَكْسِبَ ، كُلَّ يَوْمٍ أَلْفَ حَسَنَةٍ؟ فَسَأَلَهُ سَائِلٌ مِنْ جُلَسَائِهِ: كَيْفَ يَكْسِبُ أَحَدُنَا أَلْفَ حَسَنَةٍ؟ قَال:  يُسَبِّحُ مِائَةَ تَسْبِيحَةٍ، فَيُكْتَبُ لَهُ أَلْفُ حَسَنَة، أَوْ يُحَطُّ عَنْهُ أَلْفُ خَطِيئَةٍ.',
          100,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'مَنْ قَالَ: سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ، غُرِسَتْ لَهُ نَخْلَةٌ فِي الجَنَّةِ.',
          1,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: يَا عَبْدَاللَّهِ بْنَ قَيْسٍ، أَلَا أَدُلُّكَ عَلَى كَنْزٍ مِنْ كُنُوزِ الْجَنَّةِ؟ فقلت بلى يا رسول الله، قال: قل لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ.',
          1,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'و قال ﷺ: أَحَبُّ الكَلامِ إلى اللهِ أرْبَعٌ: سُبْحانَ اللهِ، والْحَمْدُ لِلَّهِ، ولا إلَهَ إلَّا اللَّهُ، واللَّهُ أكْبَرُ. لا يَضُرُّكَ بأَيِّهِنَّ بَدَأْتَ.',
          1,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'جاءَ أَعْرَابي إِلى رسُولِ اللَّه ﷺ فقالَ: علِّمْني كَلامًا أَقُولُهُ. قالَ: قُل لاَ إله إلاَّ اللَّه وحدَهُ لا شرِيكَ لهُ، اللَّه أَكْبَرُ كَبِيرًا، والحمْدُ للَّهِ كَثيرًا، وسُبْحانَ اللَّه ربِّ العالمِينَ، وَلاَ حوْل وَلا قُوَّةَ إلاَّ باللَّهِ العَزيز الحكيمِ، قَالَ: فَهؤلاء لِرَبِّي، فَما لِي؟ قَالَ: قُل: اللَّهُمَّ اغْفِرْ لِي وارْحمني. واهْدِني، وارْزُقْني.',
          1,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'كانَ الرَّجُلُ إذَا أَسْلَمَ، عَلَّمَهُ النبيُّ صَلَّى اللَّهُ عليه وسلَّمَ الصَّلَاةَ، ثُمَّ أَمَرَهُ أَنْ يَدْعُوَ بهَؤُلَاءِ الكَلِمَاتِ: اللَّهُمَّ اغْفِرْ لِي، وَارْحَمْنِي، وَاهْدِنِي، وَعَافِنِي وَارْزُقْنِي.',
          1,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'إن أَفْضَلُ الدعاء الحمد لله، و أَفْضَلُ الذِّكْرِ لاَ إِلَهَ إِلاَّ اللَّهُ.',
          1,
          0),
    );
    tasbehTahmedTakbeerAthkars.add(
      new SubCategoryDetails(
          'الباقيات الصالحات: سبحان الله والحمد لله ولا إله إلا الله والله أكبر، و لا حول ولا قوة إلا بالله.',
          1,
          0),
    );
    return tasbehTahmedTakbeerAthkars;
  }

  List<SubCategoryDetails> populateTakbeerProhibitMuhammadAthkars() {
    List<SubCategoryDetails> takbeerProhibitMuhammadAthkars =
        new List<SubCategoryDetails>();
    takbeerProhibitMuhammadAthkars.add(
      new SubCategoryDetails(
          'عن عبدِ اللَّهِ بنِ عمرٍو قالَ : رأيتُ رسولَ اللَّهِ صلَّى اللَّهُ عليهِ وسلَّمَ يعقِدُ التَّسبيحَ بيمينِهِ.',
          1,
          0),
    );
    return takbeerProhibitMuhammadAthkars;
  }

  List<SubCategoryDetails> populateGoodAndPoliteAthkars() {
    List<SubCategoryDetails> goodAndPoliteAthkars =
        new List<SubCategoryDetails>();
    goodAndPoliteAthkars.add(
      new SubCategoryDetails(
          'إذَا كَانَ جُنْحُ اللَّيْلِ أَوْ أَمْسَيْتُمْ فَكُفُّوا صِبْيَانَكُم، فَإِنَّ الشَّيْاطينَ تَنْتَشِرُ حِينَئِذ، فَإِذَا ذَهَبَ سَاعَةٌ مِنْ اللَّيْلِ فَخَلُّوهُمْ، وَأَغْلِقُوا الْأَبْوَابَ وَاذْكُرُوا اسْمَ اللَّهِ فَإِنَّ الشَّيْطَانَ لَا يَفْتَحُ بَابًا مُغْلَقًا، وَأَوْكُوا قِرَبَكُمْ وَاذْكُرُوا اسْمَ اللَّه، وَخَمِّرُوا آنِيَتَكُمْ وَاذْكُرُوا اسْمَ اللَّهِ وَلَوْ أَنْ تَعْرُضُوا عَلَيْهَا شَيْئًا، وَأَطْفِئُوا مَصَابِيحَكُمْ.',
          1,
          0),
    );
    return goodAndPoliteAthkars;
  }

  //ﷺ
  List<SubCategoryDetails> populatePrayersForDeadAthkars() {
    List<SubCategoryDetails> prayersForDeadAthkars =
        new List<SubCategoryDetails>();
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أبدله داراً خيراً من داره، وأهلاً خيراً من أهله، وأدخله الجنّة، وأعذه من عذاب القبر ومن عذاب النّار.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ عامله بما أنت أهله، ولا تعامله بما هو أهله.', 1, 0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجزه عن الإحسان إحساناً وعن الإساءة عفواً وغفراناً.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إن كان محسناً فزد من حسناته، وإن كان مسيئاً فتجاوز عن سيّئاته.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أدخله الجنّة من غير مناقشة حساب ولا سابقة عذاب.', 1, 0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ آنسه في وحدته وفي وحشته وفي غربته.', 1, 0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أنزله منزلاً مباركاً وأنت خير المنزلين.', 1, 0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أنزله منازل الصدّيقين والشّهداء والصّالحين، وحسن أولئك رفيقاً.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجعل قبره روضةً من رياض الجنّة، ولا تجعله حفرةً من حفر النّار.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ افسح له في قبره مدّ بصره، وافرش قبره من فراش الجنّة.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أعذه من عذاب القبر، وجفاف ِالأرض عن جنبيها.', 1, 0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ املأ قبره بالرّضا والنّور والفسحة والسّرور.', 1, 0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّه في ذمّتك وحبل جوارك، فقِهِِ فتنة القبر، وعذاب النّار، وأنت أهل الوفاء والحقّ، فاغفر له وارحمه إنّك أنت الغفور الرّحيم.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّه عبدك وابن عبدك خرج من الدّنيا وسعتها ومحبوبها وأحبّائه فيها إلى ظلمة القبر وما هو لاقيه.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّه كان يشهد أنّك لا إله إلّا أنت وأنّ محمّداً عبدك ورسولك وأنت أعلم به.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّا نتوسّل بك إليك، ونقسم بك عليك أن ترحمه ولا تعذّبه، وأن تثبّته عند السؤال.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّه نَزَل بك وأنت خير منزولٍ به، وأصبح فقيراً إلى رحمتك وأنت غنيٌّ عن عذابه.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ آته برحمتك ورضاك، وقهِ فتنة القبر وعذابه، وآته برحمتك الأمن من عذابك حتّى تبعثه إلى جنّتك يا أرحم الرّاحمين.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ انقله من مواطن الدّود وضيق اللحود إلى جنّات الخلود.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ احمه تحت الأرض، واستره يوم العرض، ولا تخزه يوم يبعثون (يوم لا ينفع مالٌ ولا بنون إلّا من أتى الله بقلبٍ سليم).',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ يمّن كتابه، ويسّر حسابه، وثقّل بالحسنات ميزانه، وثبّت على الصّراط أقدامه، وأسكنه في أعلى الجنّات بجوار حبيبك ومصطفاك (صلّى الله عليه وسلّم).',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أمّنه من فزع يوم القيامة، ومن هول يوم القيامة، واجعل نفسه آمنة مطمئنّة، ولقّنه حجّته.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجعله في بطن القبر مطمئنّاً وعند قيام الأشهاد آمن، وبجود رضوانك واثق، وإلى أعلى درجاتك سابق.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجعل عن يمينه نوراً حتّى تبعثه آمناً مطمئنّاً في نورٍ من نورك.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ انظر إليه نظرة رضا، فإنّ من تنظر إليه نظرة رضا لا تعذّبه أبداً.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ أسكنه فسيح الجنان، واغفر له يا رحمن، وارحمه يا رحيم، وتجاوز عمّا تعلم يا عليم.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اعف عنه فإنّك القائل "ويعفو عن كثير".', 1, 0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّه جاء ببابك، وأناخ بجنابك، فَجد عليه بعفوك وإكرامك وجود إحسانك.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّ رحمتك وسعت كلّ شيء فارحمه رحمةً تطمئنّ بها نفسه، وتقرّ بها عينه.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ احشره مع المتّقين إلى الرّحمن وفداً.', 1, 0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ احشره مع أصحاب اليمين، واجعل تحيّته سلامٌ لك من أصحاب اليمين.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ بشّره بقولك "كلوا واشربوا هنيئاً بما أسلفتم في الأيّام الخالية".',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجعله من الّذين سعدوا في الجنّة خالدين فيها ما دامت السموات والأرض.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ لا نزكّيه عليك، ولكنّا نحسبه أنّه أمن وعمل صالحاً، فاجعل له جنّتين ذواتي أفنان بحقّ قولك: "ولمن خاف مقام ربّه جنّتان".',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ شفع فيه نبيّنا ومصطفاك، واحشره تحت لوائه، واسقه من يده الشّريفة شربةً هنيئةً لا يظمأ بعدها أبداً.',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ اجعله في جنّة الخلد "الَّتِي وُعِدَ الْمُتَّقُونَ كَانَتْ لَهُمْ جَزَاء وَمَصِيرًا. لَهُمْ فِيهَا مَا يَشَاؤُونَ خَالِدِينَ كَانَ عَلَى رَبِّكَ وَعْدًا مَسْؤُولا".',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّه صبر على البلاء فلم يجزع، فامنحه درجة الصّابرين الّذين يوفون أجورهم بغير حساب فإنّك القائل "إنّما يوفي الصّابرون أجرهم بغير حساب".',
          1,
          0),
    );
    prayersForDeadAthkars.add(
      new SubCategoryDetails(
          'اللَّهُمَّ إنّه كان مصلّ لك، فثبّته على الصّراط يوم تزل الأقدام.',
          1,
          0),
    );
    return prayersForDeadAthkars;
  }
}
