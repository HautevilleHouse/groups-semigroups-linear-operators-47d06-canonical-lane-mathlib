import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure DissipativeOperatorPackage where
  space : Type u
  innerProductSpace : InnerProductSpace ℝ space
  operator : space → space
  dissipativeInequality : Prop
  maximalDissipative : Prop
  mDissipativeOperator : Prop

structure DissipativeOperatorEvidence (D : DissipativeOperatorPackage) where
  dissipativeInequalityClosed : D.dissipativeInequality
  maximalDissipativeClosed : D.maximalDissipative

def DissipativeOperatorClosed (D : DissipativeOperatorPackage) : Prop :=
  D.dissipativeInequality ∧ D.maximalDissipative

theorem dissipative_operator_closed_from_evidence (D : DissipativeOperatorPackage) (E : DissipativeOperatorEvidence D) :
    DissipativeOperatorClosed D := by
  exact And.intro E.dissipativeInequalityClosed E.maximalDissipativeClosed

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
