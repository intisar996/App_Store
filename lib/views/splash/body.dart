part of '../../utils/app_import/app_import.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({Key? key}) : super(key: key);

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      MaterialPageRoute<PageHome> route = MaterialPageRoute(
        builder: (context) => PageHome(),
      );
      // Navigator.pushReplacement(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(
      MediaQuery.of(context).size.width,
    );
    print(MediaQuery.of(context).size.height);
    // print(MediaQuery.of(context).orientation.toString());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // * Icon App
            // if (MediaQuery.of(context).orientation == Orientation.landscape)
            Image(
              image: AssetImage(AppIcons.appIcon),
              // width: MediaQuery.of(context).size.width / 2,
              /// [sw] = screen width
              width: AppDime.half.sw,
            ),
            // * Spacing 16
            AppDime.lg.verticalSpace,
            // SizedBox(
            //   // height: AppDime.lg.w,
            //   // height: MediaQuery.of(context).size.height / 30,
            // ),
            // * Name App
            Text(AppLangKey.appName.tr(),

                /// sp ===  size px
                /// sm == smart == يشوف حجم الشاشة و يكبرها و يصٍغرها
                style: TextStyle(fontSize: AppDime.lg.sm))
          ],
        ),
      ),
    );
  }
}
