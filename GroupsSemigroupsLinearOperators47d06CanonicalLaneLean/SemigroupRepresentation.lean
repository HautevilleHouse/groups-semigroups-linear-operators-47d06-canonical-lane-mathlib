import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure SemigroupRepresentationPackage where
  semigroup : Type u
  semigroupStr : Semigroup semigroup
  banachSpace : Type v
  normedSpace : NormedAddCommGroup banachSpace
  completeSpace : CompleteSpace banachSpace
  representation : semigroup → (banachSpace →L[ℝ] banachSpace)
  stronglyContinuousAction : Prop
  uniformBoundedness : Prop
  spectralMapping : Prop

structure SemigroupRepresentationEvidence
    (P : SemigroupRepresentationPackage) where
  stronglyContinuousActionClosed : P.stronglyContinuousAction
  uniformBoundednessClosed : P.uniformBoundedness
  spectralMappingClosed : P.spectralMapping

def SemigroupRepresentationClosed (P : SemigroupRepresentationPackage) : Prop :=
  P.stronglyContinuousAction ∧ P.uniformBoundedness ∧ P.spectralMapping

theorem semigroup_representation_closed_from_evidence
    (P : SemigroupRepresentationPackage)
    (E : SemigroupRepresentationEvidence P) : SemigroupRepresentationClosed P := by
  exact And.intro E.stronglyContinuousActionClosed
    (And.intro E.uniformBoundednessClosed E.spectralMappingClosed)

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse