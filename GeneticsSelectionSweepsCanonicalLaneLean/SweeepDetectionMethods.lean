import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneticsSelectionSweepsCanonicalLaneLean.SelectionSweepSignature

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure SweepDetectionMethodsPackage where
  sweepSignature : SelectionSweepSignaturePackage
  crossPopulationComparison : Prop
  compositeLikelihoodRatio : ℚ
  machineLearningScore : ℚ
  methodConsensus : Prop
  validatedBySimulation : Prop

structure SweepDetectionMethodsEvidence (M : SweepDetectionMethodsPackage) where
  methodConsensusClosed : M.methodConsensus
  validatedBySimulationClosed : M.validatedBySimulation

def SweepDetectionMethodsClosed (M : SweepDetectionMethodsPackage) : Prop :=
  M.methodConsensus ∧ M.validatedBySimulation

theorem sweep_detection_methods_closed_from_evidence (M : SweepDetectionMethodsPackage)
    (E : SweepDetectionMethodsEvidence M) : SweepDetectionMethodsClosed M := by
  exact And.intro E.methodConsensusClosed E.validatedBySimulationClosed

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse
