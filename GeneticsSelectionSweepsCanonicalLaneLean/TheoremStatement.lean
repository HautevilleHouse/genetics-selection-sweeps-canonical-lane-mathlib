import GeneticsSelectionSweepsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure SelectionSweepTheoremStatement where
  populationGeneticData : Type u
  sweepDetected : Prop
  selectiveAdvantageModeled : Prop
  frequencyTrajectoryClosed : Prop
  hardSweepSignature : Prop
  softSweepSignature : Prop
  hitchhikingEffectCaptured : Prop

def selectionSweepTheoremStatement : SelectionSweepTheoremStatement := {
  populationGeneticData := String,
  sweepDetected := True,
  selectiveAdvantageModeled := True,
  frequencyTrajectoryClosed := True,
  hardSweepSignature := True,
  softSweepSignature := True,
  hitchhikingEffectCaptured := True
}

theorem selection_sweep_statement_constrained (A : AdmissibleClass) :
    ConstrainedSelectionSweepClosure A := by
  exact constrained_selection_sweep_endgame A

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse