import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesSet : Type u
  branchLengths : Prop
  topology : Prop
  rootLocation : Prop
  substitutionModel : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  branchLengthsClosed : P.branchLengths
  topologyClosed : P.topology
  rootLocationClosed : P.rootLocation
  substitutionModelClosed : P.substitutionModel

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.branchLengths ∧ P.topology ∧ P.rootLocation ∧ P.substitutionModel

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.branchLengthsClosed
    (And.intro E.topologyClosed
      (And.intro E.rootLocationClosed E.substitutionModelClosed))

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse