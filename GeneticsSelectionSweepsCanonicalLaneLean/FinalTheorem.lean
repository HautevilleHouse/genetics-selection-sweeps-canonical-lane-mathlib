import GeneticsSelectionSweepsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

def SelectionSweepClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem selection_sweep_endgame (A : AdmissibleClass) :
    SelectionSweepClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse