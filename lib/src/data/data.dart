import 'bech_design.dart';
import 'bech_psychology.dart';

class Data {
  Data();

  final List newsletters = [
    BechDesignContents().newsletterContents,
    PsychologyContents().newsletterContents,
  ];
}
