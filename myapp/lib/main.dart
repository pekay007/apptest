  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:sizer/sizer.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  import 'package:myapp/src/pages/entrypoint/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IjcyMDgxOTEwNDA4OUBoaXQuZWR1LmluIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInByb2plY3RzIjpbMTQ4NjkyXSwiaW1hZ2UiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BSXRidm1rVXZDME5pXzM4d3dvWmdLLTRPRFlVUWVYQmVzRVpkRFloTTVJcT1zOTYtYyIsIm5hbWUiOiJQUkFOQVYgUCIsImVtaXR0ZXIiOiJUZXRhLUF1dGgiLCJpYXQiOjE2NTgzMDYwODksImV4cCI6NDgxNDA2NjA4OX0.eOjtWziW2PRO52xZ8FXRO5Sh6BAZCxmSFO8t3kJ5Yx8',
      prjId: 148692,
    );
    
      Supabase.initialize(
    url: 'https://ovnbasifhtrrjsvywxyq.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im92bmJhc2lmaHRycmpzdnl3eHlxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTgzMDEzNDUsImV4cCI6MTk3Mzg3NzM0NX0.8Rhokm7QRpUO7efU9eZWE_jJq0RPNFYp_evBuetaWTE',
  );
  
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Sizer(
        builder: (
          final context,
          final orientation,
          final deviceType,
        ) => MaterialApp(
          title: 'BooChat',
          home: SplashScreenView(
            navigateRoute: PageEntryPoint(),
            duration: 2200,
            imageSize: 80,
            imageSrc: 'assets/teta-app.png',
            text: '',
            textType: TextType.NormalText,
            textStyle: TextStyle(
              fontSize: 30.0,
            ),
            backgroundColor: Colors.black,
          ),
        ),
      );
    }
  }
  