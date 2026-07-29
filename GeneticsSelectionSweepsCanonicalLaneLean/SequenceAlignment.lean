import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure SequenceAlignmentPackage where
  referenceGenome : String
  sampleGenome : String
  matchScore : Float
  gapPenalty : Float
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (A : SequenceAlignmentPackage) where
  matchScoreClosed : A.matchScore > 0.0
  gapPenaltyClosed : A.gapPenalty < 0.0
  optimalAlignmentClosed : A.optimalAlignment

def SequenceAlignmentClosed (A : SequenceAlignmentPackage) : Prop :=
  A.matchScore > 0.0 ∧ A.gapPenalty < 0.0 ∧ A.optimalAlignment

theorem sequence_alignment_closed_from_evidence (A : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence A) :
    SequenceAlignmentClosed A := by
  exact And.intro E.matchScoreClosed
    (And.intro E.gapPenaltyClosed E.optimalAlignmentClosed)

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse