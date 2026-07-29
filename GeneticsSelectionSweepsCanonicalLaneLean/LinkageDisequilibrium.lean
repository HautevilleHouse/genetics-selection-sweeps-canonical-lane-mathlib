import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure LinkageDisequilibriumPackage where
  lociPair : Type u
  haplotypeFrequencies : Prop
  linkageMeasure : Type v
  decayRate : Prop

structure LinkageDisequilibriumEvidence (L : LinkageDisequilibriumPackage) where
  haplotypeFrequenciesClosed : L.haplotypeFrequencies
  decayRateClosed : L.decayRate

def LinkageDisequilibriumClosed (L : LinkageDisequilibriumPackage) : Prop :=
  L.haplotypeFrequencies ∧ L.decayRate

theorem linkage_disequilibrium_closed_from_evidence (L : LinkageDisequilibriumPackage) (E : LinkageDisequilibriumEvidence L) :
    LinkageDisequilibriumClosed L := by
  exact And.intro E.haplotypeFrequenciesClosed E.decayRateClosed

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse