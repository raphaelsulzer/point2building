conda create -n p2b python=3.11 -y

# follow installation instructions here, otherwise MinkowskiEngine is a big pain: https://github.com/NVIDIA/MinkowskiEngine#cuda-11x

conda install gcc=11 gxx=11 -y && conda install openblas-devel -c anaconda -y
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
conda install cudatoolkit lightning cudatoolkit-dev -c pytorch -c nvidia -c conda-forge -y 

# then clone the Minkowski proj and run
python setup.py install --blas_include_dirs=${CONDA_PREFIX}/include --blas=openblas

# conda remove -n p2b --all -y