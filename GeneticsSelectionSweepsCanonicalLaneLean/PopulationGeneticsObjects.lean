import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure GenomeSequence where
  carrier : Type
  alphabet : Type
  length : Nat
  seq : carrier → List alphabet

structure SelectionSweepObject where
  genome : GenomeSequence
  locus : Nat
  derivedAlleleFrequency : Prop
  sweepRegion : Prop
  conclusion : sweepRegion

structure SelectionSweepEndgameState where
  object : SelectionSweepObject

def SelectionSweepWitnessClosed (O : SelectionSweepObject) : Prop :=
  O.sweepRegion

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse