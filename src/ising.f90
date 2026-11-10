!==============================================================================
! Práctica 7 - Modelo de Ising 2D (Monte Carlo)
!
! De momento es solo un esqueleto: comprueba que compila y que escribe
! un fichero en data/ que luego lee Python.
!==============================================================================
program ising
    implicit none

    integer, parameter :: dp = kind(1.0d0)
    real(dp), parameter :: Tc = 2.0_dp / log(1.0_dp + sqrt(2.0_dp))  ! Onsager (J = kB = 1)

    integer :: u

    print '(a, f8.5)', 'Temperatura critica Tc = ', Tc

    ! Fichero de prueba (ruta relativa: ejecutar desde la carpeta del proyecto)
    open(newunit=u, file='data/prueba.dat', status='replace', action='write')
    write(u, '(a)') '# columna1 columna2'
    write(u, '(2f12.6)') 1.0_dp, Tc
    close(u)

    print '(a)', 'Escrito data/prueba.dat'
end program ising
