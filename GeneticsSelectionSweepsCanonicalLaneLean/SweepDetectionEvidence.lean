import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure SweepDetectionEvidencePackage where
  sequenceData : Prop
  populationFrequencySpectrum : Prop
  sweepSignature : Prop
  neutralityTestResult : Prop

def SweepDetectionEvidenceClosed (S : SweepDetectionEvidencePackage) : Prop :=
  S.sequenceData ∧ S.populationFrequencySpectrum ∧ S.sweepSignature ∧ S.neutralityTestResult

structure SweepDetectionCertificate (S : SweepDetectionEvidencePackage) where
  sequenceDataClosed : S.sequenceData
  populationFrequencySpectrumClosed : S.populationFrequencySpectrum
  sweepSignatureClosed : S.sweepSignature
  neutralityTestResultClosed : S.neutralityTestResult

theorem sweep_detection_certificate_closed (S : SweepDetectionEvidencePackage) (C : SweepDetectionCertificate S) :
    SweepDetectionEvidenceClosed S := by
  exact And.intro C.sequenceDataClosed
    (And.intro C.populationFrequencySpectrumClosed
      (And.intro C.sweepSignatureClosed C.neutralityTestResultClosed))

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse