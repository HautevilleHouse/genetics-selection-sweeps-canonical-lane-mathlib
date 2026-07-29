import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure PhylogeneticInferencePackage where
  taxonSet : Type u
  treeTopology : Type v
  substitutionModel : Prop
  likelihoodComputed : Prop
  inferredAncestralStates : Prop

def PhylogeneticInferenceClosed (P : PhylogeneticInferencePackage) : Prop :=
  P.substitutionModel ∧ P.likelihoodComputed ∧ P.inferredAncestralStates

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse