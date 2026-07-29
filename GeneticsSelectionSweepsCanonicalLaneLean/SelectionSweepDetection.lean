import GeneticsSelectionSweepsCanonicalLaneLean.AdmissibleClass
import GeneticsSelectionSweepsCanonicalLaneLean.HardyWeinbergEquilibrium
import GeneticsSelectionSweepsCanonicalLaneLean.LinkageDisequilibrium

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure SelectionSweepDetectionPackage where
  hardWeinberg : HardyWeinbergEquilibriumPackage
  linkageDisequilibrium : LinkageDisequilibriumPackage
  siteFrequencySpectrum : List ℝ
  compositeLikelihoodRatio : ℝ
  selectionCoefficient : ℝ

def SelectionSweepDetected (S : SelectionSweepDetectionPackage) : Prop :=
  HardyWeinbergClosed S.hardWeinberg ∧ LinkageDisequilibriumClosed S.linkageDisequilibrium ∧
  S.compositeLikelihoodRatio > 100.0

structure SelectionSweepDetectionEvidence where
  hardWeinbergClosed : HardyWeinbergClosed (λ H => H)  -- placeholder
  linkageDisequilibriumClosed : LinkageDisequilibriumClosed (λ L => L)
  compositeLikelihoodHigh : SelectionSweepDetectionPackage -> Prop

theorem selection_sweep_detected_from_evidence (S : SelectionSweepDetectionPackage)
    (E : SelectionSweepDetectionEvidence) : SelectionSweepDetected S := by
  exact And.intro (And.intro ?_ ?_) ?_
  sorry

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse