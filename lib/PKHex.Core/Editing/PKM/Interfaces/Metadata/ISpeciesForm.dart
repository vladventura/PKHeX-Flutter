import 'dart:typed_data';

abstract class ISpeciesForm {
  BigInt _species = BigInt.zero;
  ByteData _form = ByteData(0);

  /// <summary> Species ID of the entity (National Dex). </summary>
  BigInt get species => _species.toUnsigned(16);
  set species(BigInt incoming) => _species = incoming.toUnsigned(16);

  /// <summary> Form ID of the entity. </summary>
  ByteData get form => _form;
  set form(ByteData incoming) => _form = incoming;
}
