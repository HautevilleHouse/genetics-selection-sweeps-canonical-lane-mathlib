import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure PopulationGeneticsFoundationPackage where
  effectivePopulationSize : ℕ
  mutationRate : ℚ
  recombinationRate : ℚ
  selectionCoefficient : ℚ
  dominanceCoefficient : ℚ
  wanderingAlleleFrequency : ℕ

def PopulationGeneticsFoundationEvidence (P : PopulationGeneticsFoundationPackage) : Prop :=
  P.effectivePopulationSize > 0 ∧ P.mutationRate > 0 ∧ P.recombinationRate > 0 ∧ P.selectionCoefficient > 0

theorem population_genetics_foundation_evidenced (P : PopulationGeneticsFoundationPackage)
    (evidence : P.effectivePopulationSize > 0 ∧ P.mutationRate > 0 ∧ P.recombinationRate > 0 ∧ P.selectionCoefficient > 0) :
    PopulationGeneticsFoundationEvidence P := evidence

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse
