MODULE UniversalConstants
  IMPLICIT NONE
  REAL, PARAMETER :: PI = 3.141592653589793
  REAL, PARAMETER :: G = 6.67430E-11  ! Gravitational constant (m^3 kg^-1 s^-2)
  REAL, PARAMETER :: C = 2.99792458E8 ! Speed of light (m/s)
  REAL, PARAMETER :: H = 6.62607015E-34 ! Planck's constant (J·s)
END MODULE UniversalConstants

PROGRAM UseConstants
  USE UniversalConstants
  IMPLICIT NONE

  ! Declare variables
  REAL :: radius, area, mass1, mass2, distance, force

  ! Calculate and display the area of a circle
  PRINT *, 'Enter the radius of a circle:'
  READ *, radius
  area = PI * radius**2
  PRINT *, 'Area of the circle:', area

  ! Calculate and display gravitational force
  PRINT *, 'Enter mass1 (kg), mass2 (kg), and distance (m):'
  READ *, mass1, mass2, distance
  IF (distance > 0) THEN
     force = G * (mass1 * mass2) / (distance**2)
     PRINT *, 'Gravitational Force (N):', force
  ELSE
     PRINT *, 'Distance must be greater than zero!'
  END IF

END PROGRAM UseConstants
