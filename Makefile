# source /home/panos/opt/intel/oneapi/mpi/2021.6.0/env/vars.sh
# source /home/panos/opt/intel/oneapi/compiler/2022.1.0/env/vars.sh

# mpifort
FORTRANC=~/opt/intel/oneapi/mpi/2021.6.0/bin/mpiifort

all: link

clean:
	rm *.o SISSO

compile:
	$(FORTRANC) -c var_global.f90 libsisso.f90 DI.f90 FC.f90 SISSO.f90

link:
	$(FORTRANC) *.o -o SISSO -L/home/panos/opt/intel/compiler/2022.1.0/linux/compiler/lib/intel64_lin/
