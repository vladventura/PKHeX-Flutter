/// <summary>
/// Object has Trainer ownership with a way to show the Trainer ID.
/// </summary>
class ITrainerID {
  TrainerIDFormat? _trainerIdDisplayFormat;

  /// <summary>
  /// Format the stored Trainer ID is shown to the player.
  /// </summary>
  TrainerIDFormat? get trainerIDDisplayFormat => _trainerIdDisplayFormat;
  set trainerIDDisplayFormat(TrainerIDFormat? incoming) =>
      _trainerIdDisplayFormat = incoming;
}

enum TrainerIDFormat {
  /// <summary>
  /// Don't use me.
  /// </summary>
  None,

  /// <summary>
  /// 16-bit Trainer ID
  /// </summary>
  /// <remarks>Generations 1-2 only. Secret ID did not exist.</remarks>
  SixteenBitSingle,

  /// <summary>
  /// 16-bit Trainer ID, 16-bit Secret ID
  /// </summary>
  /// <remarks>Generations 3-6, and Generation 1-2 transferred 7+.</remarks>
  SixteenBit,

  /// <summary>
  /// 32-bit Trainer ID, showing the lowest 6 digits.
  /// </summary>
  /// <remarks>Generation 7 origin onward.</remarks>
  SixDigit,
}

// class TrainerIDExtensions
// {
//     /// <summary>
//     /// Detects the correct <see cref="TrainerIDFormat"/> to use for the input <see cref="tr"/>.
//     /// </summary>
//     static TrainerIDFormat GetTrainerIDFormat(ITrainerID tr) => tr switch
//     {
//         PKM { Format: <= 2 }  => SixteenBitSingle,
//         PKM { Version: 0 } pk => pk.Format     >= 7 ? SixDigit : SixteenBit,
//         IGeneration sv        => sv.Generation >= 7 ? SixDigit : SixteenBit,
//         _ => SixteenBit,
//     };

//     /// <summary> String format specifier for <see cref="SixDigit"/> TID. </summary>
//     public const string TID7 = "D6";
//     /// <summary> String format specifier for <see cref="SixDigit"/> SID. </summary>
//     public const string SID7 = "D4";
//     /// <summary> String format specifier for <see cref="SixteenBit"/> TID. </summary>
//     public const string TID16 = "D5";
//     /// <summary> String format specifier for <see cref="SixteenBit"/> SID. </summary>
//     public const string SID16 = "D5";

//     /// <summary>
//     /// Gets the string format specifier to use for the requested format TID.
//     /// </summary>
//     public static string GetTrainerIDFormatStringTID(this TrainerIDFormat format) => format switch
//     {
//         SixDigit => TID7,
//         _ => TID16,
//     };

//     /// <summary>
//     /// Gets the string format specifier to use for the requested format SID.
//     /// </summary>
//     public static string GetTrainerIDFormatStringSID(this TrainerIDFormat format) => format switch
//     {
//         SixDigit => SID7,
//         _ => SID16,
//     };
// }
