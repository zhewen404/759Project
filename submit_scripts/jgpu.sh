#!/usr/bin/env bash
#SBATCH -p wacc
#SBATCH -c 20
#SBATCH -J gpu
#SBATCH --gres=gpu:1 
#SBATCH -o jgpu.out -e jgpu.err
##SBATCH --open-mode=append

#./JacobiGPU 4 in_4.txt 1 0.0000000 test.txt 
./JacobiGPU $((2**8)) testbenches/test_8.txt 0 0.0000000 test.txt $1 $2 >> out/jgpu_$1_$2.out
./JacobiGPU $((2**9)) testbenches/test_9.txt 0 0.0000000 test.txt $1 $2 >> out/jgpu_$1_$2.out
./JacobiGPU $((2**10)) testbenches/test_10.txt 0 0.0000000 test.txt $1 $2 >> out/jgpu_$1_$2.out
./JacobiGPU $((2**11)) testbenches/test_11.txt 0 0.0000000 test.txt $1 $2 >> out/jgpu_$1_$2.out
./JacobiGPU $((2**12)) testbenches/test_12.txt 0 0.0000000 test.txt $1 $2 >> out/jgpu_$1_$2.out
./JacobiGPU $((2**13)) testbenches/test_13.txt 0 0.0000000 test.txt $1 $2 >> out/jgpu_$1_$2.out
#./JacobiGPU 2048 testbenches/test_11.txt 0 0.0000000 test.txt $1 $2
#./JacobiGPU 4096 testbenches/test_12.txt 0 0.0000000 test.txt $1 $2
#./JacobiGPU 8192 testbenches/test_13.txt 0 0.0000000 test.txt $1 $2

