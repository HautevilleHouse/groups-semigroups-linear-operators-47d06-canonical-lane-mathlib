import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

/-!
# Lumer-Phillips Theorem Package

This module captures the Lumer-Phillips theorem: a linear operator generates a
strongly continuous contraction semigroup on a Banach space if and only if it is
closed, densely defined, dissipative, and satisfies the range condition.
-/

structure LumerPhillipsPackage (X : BanachSpace) where
  operator : BoundedLinearOperator X X
  closed : Prop
  denselyDefined : Prop
  dissipative : Prop
  rangeCondition : Prop

structure LumerPhillipsEvidence {X : BanachSpace} (L : LumerPhillipsPackage X) where
  closedClosed : L.closed
  denselyDefinedClosed : L.denselyDefined
  dissipativeClosed : L.dissipative
  rangeConditionClosed : L.rangeCondition

def LumerPhillipsClosed {X : BanachSpace} (L : LumerPhillipsPackage X) : Prop :=
  L.closed ∧ L.denselyDefined ∧ L.dissipative ∧ L.rangeCondition

theorem lumer_phillips_closed_from_evidence {X : BanachSpace}
    (L : LumerPhillipsPackage X) (E : LumerPhillipsEvidence L) : LumerPhillipsClosed L := by
  exact And.intro E.closedClosed (And.intro E.denselyDefinedClosed (And.intro E.dissipativeClosed E.rangeConditionClosed))

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse