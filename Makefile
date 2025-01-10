#!/bin/bash

1d_global_L1:
	sbatch --time=0-0:04:00 --ntasks-per-node=2\
		--export=run_level='1' 1d_global_search/1d_global_search.sbat

1d_global_L4:
	sbatch --time=1-00:00:00 --ntasks-per-node=36\
		--export=run_level='4' 1d_global_search/1d_global_search.sbat

clean:
	rm slurm* || true

