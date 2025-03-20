MODULE CoordinateModule
  IMPLICIT NONE

  TYPE :: Coordinate2D
     REAL :: x, y
   CONTAINS
     PROCEDURE :: display => display2D
  END TYPE Coordinate2D

  TYPE :: Coordinate3D
     REAL :: x, y, z
   CONTAINS
     PROCEDURE :: display => display3D
  END TYPE Coordinate3D

CONTAINS

  SUBROUTINE display2D(self)
    CLASS(Coordinate2D), INTENT(IN) :: self
    PRINT *, '2D Coordinate: (', self%x, ',', self%y, ')'
  END SUBROUTINE display2D

  SUBROUTINE display3D(self)
    CLASS(Coordinate3D), INTENT(IN) :: self
    PRINT *, '3D Coordinate: (', self%x, ',', self%y, ',', self%z, ')'
  END SUBROUTINE display3D

END MODULE CoordinateModule

PROGRAM TestCoordinates
  USE CoordinateModule
  IMPLICIT NONE

  TYPE(Coordinate2D) :: point2D
  TYPE(Coordinate3D) :: point3D

  ! Initialize and display 2D point
  point2D%x = 3.5
  point2D%y = 7.2
  CALL point2D%display()

  ! Initialize and display 3D point
  point3D%x = 1.0
  point3D%y = 4.5
  point3D%z = 9.8
  CALL point3D%display()

END PROGRAM TestCoordinates
