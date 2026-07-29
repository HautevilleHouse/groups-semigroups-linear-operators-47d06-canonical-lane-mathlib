import GroupSemigroupsLinearOperators47d06CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure C0SemigroupPackage where
  space : Type u
  norm : space → ℝ
  semigroup : ℝ → (space → space)
  linearity : Prop
  identity_at_zero : Prop
  semigroup_property : Prop
  strong_continuity : Prop

structure C0SemigroupEvidence (P : C0SemigroupPackage) where
  linearity_closed : P.linearity
  identity_at_zero_closed : P.identity_at_zero
  semigroup_property_closed : P.semigroup_property
  strong_continuity_closed : P.strong_continuity

def C0SemigroupClosed (P : C0SemigroupPackage) : Prop :=
  P.linearity ∧ P.identity_at_zero ∧ P.semigroup_property ∧ P.strong_continuity

theorem c0_semigroup_closed_from_evidence (P : C0SemigroupPackage)
    (E : C0SemigroupEvidence P) : C0SemigroupClosed P := by
  exact And.intro E.linearity_closed (And.intro E.identity_at_zero_closed
    (And.intro E.semigroup_property_closed E.strong_continuity_closed))

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
