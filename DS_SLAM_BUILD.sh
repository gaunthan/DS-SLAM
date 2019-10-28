
echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8

cd ../../../

echo "Configuring and building libsegmentation.so ..."

cd Examples/ROS/ORB_SLAM2_PointMap_SegNetM/libsegmentation
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8

cd ../../../../../

echo "Configuring and building libORB_SLAM2_PointMap_SegNetM.so ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j8

cd ..


echo "Configuring and building Executable TUM ..."

cd Examples/ROS/ORB_SLAM2_PointMap_SegNetM
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:`pwd`/../
mkdir build
cd build
#cmake .. -DCMAKE_BUILD_TYPE=Release
cmake .. -DCMAKE_BUILD_TYPE=Debug
make -j8

cd ../../../../



