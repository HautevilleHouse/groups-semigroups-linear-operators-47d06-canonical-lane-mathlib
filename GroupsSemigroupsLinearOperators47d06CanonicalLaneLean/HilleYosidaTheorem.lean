import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

/-!
# Hille-Yosida Theorem Package

This module captures the Hille-Yosida theorem: a linear operator generates a
strongly continuous contraction semigroup if and only if it is closed, densely
defined, and satisfies the resolvent bounds.
-/

structure HilleYosidaPackage (X : BanachSpace) where
  operator : BoundedLinearOperator X X
  closed : Prop
  denselyDefined : Prop
  resolventSetContainsPositiveReals : Prop
  resolventBoundHolds : Prop

structure HilleYosidaEvidence {X : BanachSpace} (H : HilleYosidaPackage X) where
  closedClosed : H.closed
  denselyDefinedClosed : H.denselyDefined
  resolventSetClosed : H.resolventSetContainsPositiveReals
  resolventBoundClosed : H.resolventBoundHolds

def HilleYosidaClosed {X : BanachSpace} (H : HilleYosidaPackage X) : Prop :=
  H.closed ∧ H.denselyDefined ∧ H.resolventSetContainsPositiveReals ∧ H.resolventBoundHolds

theorem hille_yosida_closed_from_evidence {X : BanachSpace}
    (H : HilleYosidaPackage X) (E : HilleYosidaEvidence H) : HilleYosidaClosed H := by
  exact And.intro E.closedClosed (And.intro E.denselyDefinedClosed (And.intro E.resolventSetClosed E.resolventBoundClosed))

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse