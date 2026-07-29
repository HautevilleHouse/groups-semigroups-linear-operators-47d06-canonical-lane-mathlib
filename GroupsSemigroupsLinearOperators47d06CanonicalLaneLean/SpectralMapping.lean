import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure SpectralMappingPackage {P : C0SemigroupPackage} {G : GeneratorPackage P} where
  spectralBound : ℝ
  growthBound : ℝ
  spectralInclusion : Prop
  spectralMappingTheorem : Prop

structure SpectralMappingEvidence {P : C0SemigroupPackage} {G : GeneratorPackage P} (S : SpectralMappingPackage P G) where
  spectralInclusionClosed : S.spectralInclusion
  spectralMappingTheoremClosed : S.spectralMappingTheorem

def SpectralMappingClosed {P : C0SemigroupPackage} {G : GeneratorPackage P} (S : SpectralMappingPackage P G) : Prop :=
  S.spectralInclusion ∧ S.spectralMappingTheorem

theorem spectral_mapping_closed_from_evidence {P : C0SemigroupPackage} {G : GeneratorPackage P} (S : SpectralMappingPackage P G) (E : SpectralMappingEvidence S) :
    SpectralMappingClosed S := by
  exact And.intro E.spectralInclusionClosed E.spectralMappingTheoremClosed

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
