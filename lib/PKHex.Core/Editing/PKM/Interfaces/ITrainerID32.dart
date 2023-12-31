import 'package:pkhex_flutter/PKHex.Core/Editing/PKM/Interfaces/ITrainerID.dart';

/// <summary>
/// Object stores a numerical trainer ID.
/// </summary>
abstract class ITrainerID32 implements ITrainerID16 {
  BigInt? _id32;
  BigInt? _sid16;

  BigInt? get id32 => _id32?.toUnsigned(32);
  set id32(BigInt? incoming) => _id32 = incoming?.toUnsigned(32);

  BigInt? get sid16 => _sid16?.toUnsigned(16);
  set sid16(BigInt? incoming) => _sid16 = incoming?.toUnsigned(16);
}

abstract class ITrainerID16 implements ITrainerID {
  BigInt? _tid16;

  BigInt? get tid16 => _tid16?.toUnsigned(16);
  set tid16(BigInt? incoming) => _tid16 = incoming?.toUnsigned(16);
}

// public static class ITrainerID32Extensions
// {
//     /// <summary>
//     /// Checks if the <see cref="pid"/> is shiny when owned by the <see cref="ITrainerID32"/>.
//     /// </summary>
//     /// <param name="tr">Possessing trainer</param>
//     /// <param name="pid"><see cref="PKM.PID"/></param>
//     /// <param name="gen">Generation of origin.</param>
//     /// <returns>True if shiny, false if not.</returns>
//     public static bool IsShiny(this ITrainerID32 tr, uint pid, int gen = 7)
//     {
//         var xor = GetShinyXor(tr, pid);
//         var threshold = (gen >= 7 ? 16 : 8);
//         return xor < threshold;
//     }

//     /// <summary>
//     /// Calculates the <see cref="pid"/> and <see cref="ITrainerID32.ID32"/> xor.
//     /// </summary>
//     public static uint GetShinyXor(this ITrainerID32 tr, uint pid) => (pid >> 16) ^ (pid & 0xFFFF) ^ tr.SID16 ^ tr.TID16;

//     public static uint GetTrainerTID7(this ITrainerID32 tr) => tr.ID32 % 1000000;
//     public static uint GetTrainerSID7(this ITrainerID32 tr) => tr.ID32 / 1000000;
//     public static uint SetTrainerTID7(this ITrainerID32 tr, uint value) => tr.ID32 = ((tr.ID32 / 1000000) * 1000000) + value;
//     public static uint SetTrainerSID7(this ITrainerID32 tr, uint value) => tr.ID32 = (value * 1000000) + (tr.ID32 % 1000000);
//     public static uint SetTrainerID16(this ITrainerID32 tr, ushort tid16, ushort sid16) => tr.ID32 = ((uint)sid16 << 16) | tid16;
//     public static uint SetTrainerID7(this ITrainerID32 tr, uint sid7, uint tid7) => tr.ID32 = (sid7 * 1000000) + tid7;

//     public static uint GetDisplayTID(this ITrainerID32 tr) => tr.TrainerIDDisplayFormat switch
//     {
//         SixDigit => GetTrainerTID7(tr),
//         _ => tr.TID16,
//     };

//     public static uint GetDisplaySID(this ITrainerID32 tr) => tr.TrainerIDDisplayFormat switch
//     {
//         SixDigit => GetTrainerSID7(tr),
//         _ => tr.SID16,
//     };

//     public static void SetDisplayTID(this ITrainerID32 tr, uint value)
//     {
//         switch (tr.TrainerIDDisplayFormat)
//         {
//             case SixDigit: tr.SetTrainerTID7(value); break;
//             default: tr.TID16 = (ushort)value; break;
//         }
//     }

//     public static void SetDisplaySID(this ITrainerID32 tr, uint value)
//     {
//         switch (tr.TrainerIDDisplayFormat)
//         {
//             case SixDigit: tr.SetTrainerSID7(value); break;
//             default: tr.SID16 = (ushort)value; break;
//         }
//     }

//     public static void SetDisplayID(this ITrainerID32 tr, uint tid, uint sid)
//     {
//         switch (tr.TrainerIDDisplayFormat)
//         {
//             case SixDigit: tr.SetTrainerID7(sid, tid); break;
//             default: tr.SetTrainerID16((ushort)tid, (ushort)sid); break;
//         }
//     }
// }
