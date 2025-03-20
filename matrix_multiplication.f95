PROGRAM MatrixMultiplication
  IMPLICIT NONE
  INTEGER, PARAMETER :: N = 3  ! Matrix size
  REAL :: A(N, N), B(N, N), C(N, N)
  INTEGER :: i, j, k

  ! Initialize matrices A and B
  A = RESHAPE((/1.0, 2.0, 3.0, &
                4.0, 5.0, 6.0, &
                7.0, 8.0, 9.0/), SHAPE(A))

  B = RESHAPE((/9.0, 8.0, 7.0, &
                6.0, 5.0, 4.0, &
                3.0, 2.0, 1.0/), SHAPE(B))

  ! Initialize result matrix C to zero
  C = 0.0

  ! Perform matrix multiplication C = A * B
  DO i = 1, N
     DO j = 1, N
        DO k = 1, N
           C(i, j) = C(i, j) + A(i, k) * B(k, j)
        END DO
     END DO
  END DO

  ! Print the resulting matrix C
  PRINT *, 'Resultant Matrix C:'
  DO i = 1, N
     PRINT '(3F8.2)', C(i, :)
  END DO

END PROGRAM MatrixMultiplication
