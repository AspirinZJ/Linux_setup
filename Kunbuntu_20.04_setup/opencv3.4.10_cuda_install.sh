#!/bin/bash

set -e


# Developers tools
sudo apt install build-essential cmake git pkg-config unzip git gfortran cmake-curses-gui g++ -y

# Image I/O libs
sudo apt install libjpeg-dev libpng-dev libtiff-dev libjpeg8-dev libjpeg-turbo8-dev -y
# sudo apt install libjasper-dev -y

# Video Libs - FFMPEG, GSTREAMER, x264 and so on
sudo apt install libavcodec-dev libavformat-dev libswscale-dev -y
sudo apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev -y
sudo apt install libxvidcore-dev x264 libx264-dev libfaac-dev libmp3lame-dev libtheora-dev libvorbis-dev ffmpeg -y

# Cameras programming interface libs
sudo apt install libv4l-dev v4l-utils qv4l2 libxine2-dev -y
# sudo apt install v4l2ucp -y
sudo apt install libdc1394-22 libdc1394-22-dev -y

# GTK lib for the graphical user functionalites coming from OpenCV highghui module
sudo apt install libgtk-3-dev -y

# Python libraries for python2 and python3
sudo apt install python-dev python-numpy python3-numpy libpython2.7-dev libpython3.9-dev python3-pip  python3-dev -y
# sudo apt install python-pip -y


# Parallelism library C++ for CPU
sudo apt install libtbb2 libtbb-dev -y

# Optimization libraries for OpenCV
sudo apt install gfortran libatlas-base-dev -y

# Optional libraries
sudo apt install libprotobuf-dev protobuf-compiler -y
sudo apt install libgoogle-glog-dev libgflags-dev -y
sudo apt install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen -y
sudo apt install libavutil-dev libglew-dev libopenblas-dev libopenblas-base liblapack-dev liblapacke-dev qt5-default -y
sudo apt install libavresample-dev libhdf5-dev libtesseract-dev -y


if [ ! -f ~/opencv-3.4.10.zip ]; then
	wget https://github.com/opencv/opencv/archive/3.4.10.zip -O ~/opencv-3.4.10.zip
fi
if [ -d ~/opencv-3.4.10 ]; then
  echo "** ERROR: opencv-3.4.10 directory already exists"
  exit
fi

if [ ! -f ~/opencv_contrib-3.4.10.zip ]; then
	wget https://github.com/opencv/opencv_contrib/archive/3.4.10.zip -O ~/opencv_contrib-3.4.10.zip
fi
if [ -d ~/opencv_contrib-3.4.10 ]; then
  echo "** ERROR: opencv_contrib-3.4.10 directory already exists"
  exit
fi

unzip ~/opencv-3.4.10.zip -d ~/
unzip ~/opencv_contrib-3.4.10.zip -d ~/
cd ~/opencv-3.4.10

clear

echo -e "In 64-bit machine, do the following modification to the opencv source scripts"
echo "append /usr/include/x86_64-linux-gnu to Open_BLAS_INCLUDE_SEARCH_PATHS in file opencv/cmake/OpenCVFindOpenBLAS.cmake"
echo "append /usr/lib/x86_64-linux-gnu to Open_BLAS_LIB_SEARCH_PATHS in file opencv/cmake/OpenCVFindOpenBLAS.cmake"
echo "if there is issue like: LAPACK(OpenBLAS): CBLAS/LAPACK headers are not found in xxx, do the following thing: "
echo "sudo cp /usr/include/lapacke*.h xxx"
read -p "Accept? y/n" accept

mkdir build && cd build
# in case of error: calling a constexpr __host__ function("abs") from a __device__ function("abs") is not allowed. The experimental flag '--expt-relaxed-constexpr' can be used to allow this.
# add -D CUDA_NVCC_FLAGS=--expt-relaxed-constexpr flag
# -D WITH_GSTREAMER=ON -D WITH_LIBV4L=ON \
cmake 	-D CMAKE_BUILD_TYPE=RELEASE \
		-D CMAKE_INSTALL_PREFIX=/usr/local \
		-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.4.10/modules \
		-D WITH_CUDA=ON -D WITH_CUBLAS=ON -D WITH_TBB=ON \
		-D ENABLE_FAST_MATH=ON -D CUDA_FAST_MATH=ON \
		-D EIGEN_INCLUDE_PATH=/usr/include/eigen3 \
		-D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D BUILD_EXAMPLES=ON \
		-D BUILD_opencv_python2=OFF -D BUILD_opencv_python3=ON \
		-D INSTALL_PYTHON_EXAMPLES=ON \
		-D WITH_QT=ON -D WITH_OPENGL=ON \
		-D CUDA_NVCC_FLAGS=--expt-relaxed-constexpr ..

nproc
make -j$(nproc)
sudo make install
