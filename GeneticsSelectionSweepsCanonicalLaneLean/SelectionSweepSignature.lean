import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure SelectionSweepSignaturePackage where
  locus : String
  populationSample : Type
  haplotypeStructure : Prop
  linkageDisequilibrium : Prop
  selectionCoefficient : ℝ
  sweepRegionIdentified : Prop
  sweepAgeEstimated : Prop

structure SelectionSweepEvidence (S : SelectionSweepSignaturePackage) where
  haplotypeStructureClosed : S.haplotypeStructure
  linkageDisequilibriumClosed : S.linkageDisequilibrium
  sweepRegionIdentifiedClosed : S.sweepRegionIdentified
  sweepAgeEstimatedClosed : S.sweepAgeEstimated

def SelectionSweepClosed (S : SelectionSweepSignaturePackage) : Prop :=
  S.haplotypeStructure ∧ S.linkageDisequilibrium ∧
  S.sweepRegionIdentified ∧ S.sweepAgeEstimated

theorem selection_sweep_closed_from_evidence (S : SelectionSweepSignaturePackage)
    (E : SelectionSweepEvidence S) : SelectionSweepClosed S := by
  exact And.intro E.haplotypeStructureClosed
    (And.intro E.linkageDisequilibriumClosed
      (And.intro E.sweepRegionIdentifiedClosed E.sweepAgeEstimatedClosed))

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse