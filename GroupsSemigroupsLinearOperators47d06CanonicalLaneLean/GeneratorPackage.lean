import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.Semigroup

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure GeneratorPackage {P : C0SemigroupPackage} where
  generator : space → space
  domain : Set space
  closedOperator : Prop
  resolventExists : Prop
  hilleYosidaConditions : Prop
  generationTheorem : Prop

structure GeneratorEvidence {P : C0SemigroupPackage} (G : GeneratorPackage P) where
  closedOperatorClosed : G.closedOperator
  resolventExistsClosed : G.resolventExists
  hilleYosidaConditionsClosed : G.hilleYosidaConditions

def GeneratorClosed {P : C0SemigroupPackage} (G : GeneratorPackage P) : Prop :=
  G.closedOperator ∧ G.resolventExists ∧ G.hilleYosidaConditions

theorem generator_closed_from_evidence {P : C0SemigroupPackage} (G : GeneratorPackage P) (E : GeneratorEvidence G) :
    GeneratorClosed G := by
  exact And.intro E.closedOperatorClosed (And.intro E.resolventExistsClosed E.hilleYosidaConditionsClosed)

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
