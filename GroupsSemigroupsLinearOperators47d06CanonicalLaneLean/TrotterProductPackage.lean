import GroupSemigroupsLinearOperators47d06CanonicalLaneLean.HilleYosidaPackage

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure TrotterProductPackage {P : C0SemigroupPackage} where
  semigroup_one : P.space → P.space
  semigroup_two : P.space → P.space
  commutator_bounded : Prop
  limit_condition : Prop

structure TrotterProductEvidence {P : C0SemigroupPackage} (T : TrotterProductPackage P) where
  commutator_bounded_closed : T.commutator_bounded
  limit_condition_closed : T.limit_condition

def TrotterProductClosed {P : C0SemigroupPackage} (T : TrotterProductPackage P) : Prop :=
  T.commutator_bounded ∧ T.limit_condition

theorem trotter_product_closed_from_evidence {P : C0SemigroupPackage}
    (T : TrotterProductPackage P) (E : TrotterProductEvidence T) :
    TrotterProductClosed T := by
  exact And.intro E.commutator_bounded_closed E.limit_condition_closed

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
