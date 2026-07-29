import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure SelectionSweepPackage where
  selectedLocus : Type u
  selectionCoefficient : Float
  sweepAge : Nat
  haplotypePattern : Prop
  fixationCondition : Prop

structure SelectionSweepEvidence (S : SelectionSweepPackage) where
  selectionCoefficientClosed : S.selectionCoefficient > 0.0
  sweepAgeClosed : S.sweepAge > 0
  haplotypePatternClosed : S.haplotypePattern
  fixationConditionClosed : S.fixationCondition

def SelectionSweepClosed (S : SelectionSweepPackage) : Prop :=
  S.selectionCoefficient > 0.0 ∧ S.sweepAge > 0 ∧ S.haplotypePattern ∧ S.fixationCondition

theorem selection_sweep_closed_from_evidence (S : SelectionSweepPackage) (E : SelectionSweepEvidence S) :
    SelectionSweepClosed S := by
  exact And.intro E.selectionCoefficientClosed
    (And.intro E.sweepAgeClosed
      (And.intro E.haplotypePatternClosed E.fixationConditionClosed))

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse