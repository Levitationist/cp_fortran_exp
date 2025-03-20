PROGRAM MonteCarloPi
  IMPLICIT NONE
  INTEGER, PARAMETER :: N = 1000000  ! Number of random points
  INTEGER :: i, count_inside
  REAL :: x, y, pi_estimate

  ! Initialize counter for points inside the circle
  count_inside = 0

  ! Loop to generate random points
  DO i = 1, N
     CALL RANDOM_NUMBER(x)
     CALL RANDOM_NUMBER(y)
     
     ! Check if the point (x, y) is inside the unit circle
     IF (x*x + y*y <= 1.0) THEN
        count_inside = count_inside + 1
     END IF
  END DO

  ! Estimate pi using Monte Carlo formula
  pi_estimate = 4.0 * REAL(count_inside) / REAL(N)

  ! Print result
  PRINT *, 'Estimated Pi Value:', pi_estimate

END PROGRAM MonteCarloPi
