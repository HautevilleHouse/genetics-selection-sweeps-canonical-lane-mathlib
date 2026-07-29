import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsSelectionSweepsCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  populationSize : Nat
  alleleFrequencyP : ℝ
  alleleFrequencyQ : ℝ
  genotypeFrequenciesSum : Prop
  expectedHomozygous : ℝ
  expectedHeterozygous : ℝ
  equilibriumHolds : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergEquilibriumPackage) where
  genotypeFrequenciesSumClosed : H.genotypeFrequenciesSum
  expectedHomozygousClosed : H.expectedHomozygous = H.alleleFrequencyP ^ 2 + H.alleleFrequencyQ ^ 2
  expectedHeterozygousClosed : H.expectedHeterozygous = 2 * H.alleleFrequencyP * H.alleleFrequencyQ
  equilibriumHoldsClosed : H.equilibriumHolds

def HardyWeinbergClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.genotypeFrequenciesSum ∧
  H.expectedHomozygous = H.alleleFrequencyP ^ 2 + H.alleleFrequencyQ ^ 2 ∧
  H.expectedHeterozygous = 2 * H.alleleFrequencyP * H.alleleFrequencyQ ∧
  H.equilibriumHolds

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergEquilibriumPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.genotypeFrequenciesSumClosed
    (And.intro E.expectedHomozygousClosed
      (And.intro E.expectedHeterozygousClosed E.equilibriumHoldsClosed))

end GeneticsSelectionSweepsCanonicalLaneLean
end HautevilleHouse