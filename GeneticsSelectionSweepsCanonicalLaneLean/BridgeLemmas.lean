import GeneticsSelectionSweepsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := SelectionSweepEvidence

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied ∨ A.remainderRecorded  -- placeholder

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse