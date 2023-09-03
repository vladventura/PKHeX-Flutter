abstract class IFatefulEncounter {
  bool? _fatefulEncounter;

  bool? get fatefulEncounter => _fatefulEncounter;
  set fatefulEncounter(bool? incoming) => _fatefulEncounter = incoming;
}
