import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class WebPageController extends GetxController {
  final url = 'https://play.google.com/store/apps/developer?id=StarScale';
  final urlgit = 'https://github.com/ankit-apk';
  final urlwhatsapp = 'https://api.whatsapp.com/send?phone=917004297500';
  final urllinkedin = 'https://www.linkedin.com/in/ankit-srivastava-537028a9/';

  void launchPlay() async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  void launchGit() async {
    await canLaunch(urlgit)
        ? await launch(urlgit)
        : throw 'Could not launch $urlgit';
  }

  void launchWhatsapp() async {
    await canLaunch(urlwhatsapp)
        ? await launch(urlwhatsapp)
        : throw 'Could not launch $urlwhatsapp';
  }

  void launchLinkedin() async {
    await canLaunch(urllinkedin)
        ? await launch(urllinkedin)
        : throw 'Could not launch $urllinkedin';
  }
}
