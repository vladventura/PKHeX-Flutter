import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Interfaces/IFatefulEncounter.dart';
import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Interfaces/ITrainerID32.dart';
import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Interfaces/Metadata/IGameValueLimit.dart';
import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Interfaces/Metadata/IGeneration.dart';
import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Interfaces/Metadata/ILangNick.dart';
import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Interfaces/Metadata/IShiny.dart';
import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Interfaces/Metadata/ISpeciesForm.dart';

abstract class PKM
    implements
        ISpeciesForm,
        ITrainerID32,
        IGeneration,
        IShiny,
        ILangNick,
        IGameValueLimit,
        IFatefulEncounter {
  static List<String>? _extensions = EntityFileExtension.getExtensions();
  List<String>? get extensions => _extensions;
}
