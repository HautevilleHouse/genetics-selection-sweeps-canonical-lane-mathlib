import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure SelectionSweepsSignature where
  chromosome : Type u
  windowSize : Nat
  sweepRegions : Prop
  selectivePressure : Prop
  footprintDetection : Prop

structure SelectionSweepsEvidence (S : SelectionSweepsSignature) where
  sweepRegionsClosed : S.sweepRegions
  selectivePressureClosed : S.selectivePressure
  footprintDetectionClosed : S.footprintDetection

def SelectionSweepsClosed (S : SelectionSweepsSignature) : Prop :=
  S.sweepRegions ∧ S.selectivePressure ∧ S.footprintDetection

theorem selection_sweeps_closed_from_evidence
    (S : SelectionSweepsSignature) (E : SelectionSweepsEvidence S) :
    SelectionSweepsClosed S := by
  exact And.intro E.sweepRegionsClosed
    (And.intro E.selectivePressureClosed E.footprintDetectionClosed)

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse