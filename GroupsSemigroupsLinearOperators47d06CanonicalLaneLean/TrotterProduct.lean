import GroupsSemigroupsLinearOperators47d06CanonicalLaneLean.InfinitesimalGenerator

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure TrotterProductPackage
    {P : SemigroupRepresentationPackage}
    {G : InfinitesimalGeneratorPackage P} where
  trotterConvergence : Prop
  errorBound : Prop
  commutatorEstimate : Prop
  strongConvergence : Prop

structure TrotterProductEvidence
    {P : SemigroupRepresentationPackage}
    {G : InfinitesimalGeneratorPackage P}
    (T : TrotterProductPackage G) where
  trotterConvergenceClosed : T.trotterConvergence
  errorBoundClosed : T.errorBound
  commutatorEstimateClosed : T.commutatorEstimate
  strongConvergenceClosed : T.strongConvergence

def TrotterProductClosed
    {P : SemigroupRepresentationPackage}
    {G : InfinitesimalGeneratorPackage P}
    (T : TrotterProductPackage G) : Prop :=
  T.trotterConvergence ∧ T.errorBound ∧ T.commutatorEstimate ∧ T.strongConvergence

theorem trotter_product_closed_from_evidence
    {P : SemigroupRepresentationPackage}
    {G : InfinitesimalGeneratorPackage P}
    (T : TrotterProductPackage G)
    (E : TrotterProductEvidence T) : TrotterProductClosed T := by
  exact And.intro E.trotterConvergenceClosed
    (And.intro E.errorBoundClosed
      (And.intro E.commutatorEstimateClosed E.strongConvergenceClosed))

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse