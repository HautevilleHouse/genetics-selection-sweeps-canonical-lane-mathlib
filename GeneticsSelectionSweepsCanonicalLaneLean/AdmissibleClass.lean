import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure PopulationLocus where
  populationSize : ℕ
  locusPosition : ℕ
  derivedAlleleFrequency : ℝ

structure SelectionSweepEvidence where
  sfsDeviation : ℝ
  extendedHaplotype : ℝ
  populationDifferentiation : ℝ

structure AdmissibleClass where
  object : PopulationLocus
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop := SelectionSweepEvidence ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse