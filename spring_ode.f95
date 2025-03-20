PROGRAM SpringSystemODE
  IMPLICIT NONE
  REAL :: x, v, a, k, m, dt, t, t_max
  INTEGER :: steps, i

  ! Initialize parameters
  PRINT *, 'Enter mass (kg):'
  READ *, m
  PRINT *, 'Enter spring constant (N/m):'
  READ *, k
  PRINT *, 'Enter initial displacement (m):'
  READ *, x
  PRINT *, 'Enter initial velocity (m/s):'
  READ *, v
  PRINT *, 'Enter time step (s):'
  READ *, dt
  PRINT *, 'Enter total simulation time (s):'
  READ *, t_max

  ! Compute number of steps
  steps = INT(t_max / dt)
  PRINT *, 'Time', 'Displacement', 'Velocity'

  ! Time integration using Euler's method
  t = 0.0
  DO i = 1, steps
     a = - (k/m) * x   ! Acceleration from Hooke's Law
     v = v + a * dt     ! Update velocity
     x = x + v * dt     ! Update position
     t = t + dt         ! Update time
     PRINT *, t, x, v
  END DO

END PROGRAM SpringSystemODE
