import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure GenomePackage where
  organism : Type u
  chromosomeCount : Nat
  sequenceLength : Nat
  markerDensity : Prop
  recombinationMap : Prop

structure GenomeEvidence (G : GenomePackage) where
  chromosomeCountClosed : G.chromosomeCount > 0
  sequenceLengthClosed : G.sequenceLength > 0
  markerDensityClosed : G.markerDensity
  recombinationMapClosed : G.recombinationMap

def GenomeClosed (G : GenomePackage) : Prop :=
  G.chromosomeCount > 0 ∧ G.sequenceLength > 0 ∧ G.markerDensity ∧ G.recombinationMap

theorem genome_closed_from_evidence (G : GenomePackage) (E : GenomeEvidence G) :
    GenomeClosed G := by
  exact And.intro E.chromosomeCountClosed
    (And.intro E.sequenceLengthClosed
      (And.intro E.markerDensityClosed E.recombinationMapClosed))

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse