import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure StronglyContinuousSemigroupPackage (X : Type u) [NormedAddCommGroup X] where
  semigroup : Type v
  parameterSpace : Type w
  parameterFamily : parameterSpace → (X → X)
  semigroupLaw : Prop
  strongContinuity : Prop
  identityElement : Prop

structure StronglyContinuousSemigroupEvidence {X : Type u} [NormedAddCommGroup X]
    (S : StronglyContinuousSemigroupPackage X) where
  semigroupLawClosed : S.semigroupLaw
  strongContinuityClosed : S.strongContinuity
  identityElementClosed : S.identityElement

def StronglyContinuousSemigroupClosed {X : Type u} [NormedAddCommGroup X]
    (S : StronglyContinuousSemigroupPackage X) : Prop :=
  S.semigroupLaw ∧ S.strongContinuity ∧ S.identityElement

theorem strongly_continuous_semigroup_closed_from_evidence
    {X : Type u} [NormedAddCommGroup X] (S : StronglyContinuousSemigroupPackage X)
    (E : StronglyContinuousSemigroupEvidence S) : StronglyContinuousSemigroupClosed S := by
  exact And.intro E.semigroupLawClosed (And.intro E.strongContinuityClosed E.identityElementClosed)

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
