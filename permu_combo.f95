PROGRAM NPR_NCR_Calculation
  IMPLICIT NONE
  INTEGER :: n, r
  REAL :: nPr, nCr

  ! Function declarations
  REAL :: Factorial

  ! Read values of n and r
  PRINT *, 'Enter values for n and r:'
  READ *, n, r

  ! Check for valid input
  IF (n < 0 .OR. r < 0 .OR. r > n) THEN
     PRINT *, 'Invalid input! Ensure that 0 <= r <= n.'
     STOP
  END IF

  ! Compute nPr and nCr
  nPr = Factorial(n) / Factorial(n - r)
  nCr = nPr / Factorial(r)

  ! Print results
  PRINT *, 'nPr (Permutation):', nPr
  PRINT *, 'nCr (Combination):', nCr

CONTAINS

  ! Function to calculate factorial of a number
  REAL FUNCTION Factorial(num)
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: num
    INTEGER :: i
    Factorial = 1.0
    DO i = 1, num
       Factorial = Factorial * i
    END DO
  END FUNCTION Factorial

END PROGRAM NPR_NCR_Calculation
