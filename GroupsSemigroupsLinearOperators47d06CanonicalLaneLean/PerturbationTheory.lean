import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure PerturbationPackage {P : C0SemigroupPackage} {G : GeneratorPackage P} where
  boundedPerturbation : Prop
  relativePerturbation : Prop
  stabilityUnderPerturbation : Prop
  extrapolationSpaces : Prop

structure PerturbationEvidence {P : C0SemigroupPackage} {G : GeneratorPackage P} (R : PerturbationPackage P G) where
  boundedPerturbationClosed : R.boundedPerturbation
  relativePerturbationClosed : R.relativePerturbation
  stabilityUnderPerturbationClosed : R.stabilityUnderPerturbation

def PerturbationClosed {P : C0SemigroupPackage} {G : GeneratorPackage P} (R : PerturbationPackage P G) : Prop :=
  R.boundedPerturbation ∧ R.relativePerturbation ∧ R.stabilityUnderPerturbation

theorem perturbation_closed_from_evidence {P : C0SemigroupPackage} {G : GeneratorPackage P} (R : PerturbationPackage P G) (E : PerturbationEvidence R) :
    PerturbationClosed R := by
  exact And.intro E.boundedPerturbationClosed (And.intro E.relativePerturbationClosed E.stabilityUnderPerturbationClosed)

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
