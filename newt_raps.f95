PROGRAM NewtonRaphson
  IMPLICIT NONE
  REAL :: x, tol, f, df, error
  INTEGER :: max_iter, iter

  ! Initialize variables
  PRINT *, 'Enter initial guess:'
  READ *, x
  PRINT *, 'Enter tolerance:'
  READ *, tol
  PRINT *, 'Enter maximum iterations:'
  READ *, max_iter

  ! Iteration loop
  iter = 0
  DO WHILE (iter < max_iter)
     f = Function(x)
     df = Derivative(x)
     
     IF (df == 0.0) THEN
        PRINT *, 'Derivative is zero. Method fails.'
        STOP
     END IF
     
     x = x - f / df
     error = ABS(f)
     
     IF (error < tol) THEN
        PRINT *, 'Root found at:', x
        PRINT *, 'Iterations:', iter + 1
        STOP
     END IF
     
     iter = iter + 1
  END DO
  
  PRINT *, 'Maximum iterations reached. No convergence.'

CONTAINS

  ! Function to find root of f(x) = x^3 - x - 2
  REAL FUNCTION Function(x)
    IMPLICIT NONE
    REAL, INTENT(IN) :: x
    Function = x**3 - x - 2.0
  END FUNCTION Function

  ! Derivative of f(x) = 3x^2 - 1
  REAL FUNCTION Derivative(x)
    IMPLICIT NONE
    REAL, INTENT(IN) :: x
    Derivative = 3.0*x**2 - 1.0
  END FUNCTION Derivative

END PROGRAM NewtonRaphson
