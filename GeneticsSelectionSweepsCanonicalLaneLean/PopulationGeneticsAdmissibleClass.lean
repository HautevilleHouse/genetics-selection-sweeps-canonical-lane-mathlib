import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure PopulationGeneticsAdmittedObject where
  population : Type u
  alleleFrequencies : Prop
  heterozygosity : Prop
  fixationIndex : Prop
  selectionCoefficient : Prop

structure PopulationGeneticsAdmissibleClass where
  object : PopulationGeneticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def populationGeneticsWitnessClosed (O : PopulationGeneticsAdmittedObject) : Prop :=
  O.alleleFrequencies ∧ O.heterozygosity ∧ O.fixationIndex ∧ O.selectionCoefficient

def admittedClosure (A : PopulationGeneticsAdmissibleClass) : Prop :=
  populationGeneticsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse