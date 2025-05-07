# OpenCV Contrib Python Wheel with CUDA Support for Windows

This repository provides a pre-built Python wheel for OpenCV Contrib with CUDA support, specifically compiled for Windows. The wheel includes the main OpenCV library along with the contrib modules, optimized for GPU acceleration using NVIDIA CUDA.

## Features
- OpenCV version: 4.11.0
- CUDA support: CUDA v12.8
- Python compatibility: Python 3.7+ (may only work on python 3.11 currently, need further testing)

## Prerequisites
Before installing the wheel, ensure you have the following:
- **NVIDIA GPU** with CUDA support
- **CUDA Toolkit v12.8** installed [CUDA v12.8](https://developer.nvidia.com/cuda-12-8-0-download-archive?target_os=Windows&target_arch=x86_64&target_version=10&target_type=exe_network)
- **cuDNN v9.8** installed [cuDNN v9.8.0](https://developer.nvidia.com/cudnn-9-8-0-download-archive?target_os=Windows&target_arch=x86_64&target_version=Agnostic&cuda_version=12) (Unzip cuDNN folder to ```C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.8\``` merging the bin, lib and include folders).

## Installation
1. **Download the wheel**:
   - Download the `.whl` file from the [Releases](https://github.com/namelessxxv/opencv-cuda-windows/releases) page.

2. **Install the wheel**:
   ```bash
   pip install opencv_contrib_python-4.11.0-cp37-abi3-win_amd64.whl
   ```

3. **Verify installation**:
   ```python
   import cv2
   print(cv2.__version__)
   print(cv2.cuda.getCudaEnabledDeviceCount())
   ```
   If CUDA is properly configured, `getCudaEnabledDeviceCount()` should return a positive number indicating the number of available GPUs.

## Build Details
```
General configuration for OpenCV 4.11.0 =====================================
  Version control:               unknown

  Extra modules:
    Location (extra):            J:/opencv_contrib-4.11.0/modules
    Version control (extra):     unknown

  Platform:
    Timestamp:                   2025-05-06T10:36:38Z
    Host:                        Windows 10.0.19045 AMD64
    CMake:                       4.0.1
    CMake generator:             Visual Studio 17 2022
    CMake build tool:            C:/Program Files/Microsoft Visual Studio/2022/Community/MSBuild/Current/Bin/amd64/MSBuild.exe
    MSVC:                        1943
    Configuration:               Debug Release
    Algorithm Hint:              ALGO_HINT_ACCURATE

  CPU/HW features:
    Baseline:                    SSE SSE2 SSE3
      requested:                 SSE3
    Dispatched code generation:  SSE4_1 SSE4_2 AVX FP16 AVX2 AVX512_SKX
      SSE4_1 (18 files):         + SSSE3 SSE4_1
      SSE4_2 (2 files):          + SSSE3 SSE4_1 POPCNT SSE4_2
      AVX (9 files):             + SSSE3 SSE4_1 POPCNT SSE4_2 AVX
      FP16 (1 files):            + SSSE3 SSE4_1 POPCNT SSE4_2 AVX FP16
      AVX2 (38 files):           + SSSE3 SSE4_1 POPCNT SSE4_2 AVX FP16 AVX2 FMA3
      AVX512_SKX (8 files):      + SSSE3 SSE4_1 POPCNT SSE4_2 AVX FP16 AVX2 FMA3 AVX_512F AVX512_COMMON AVX512_SKX

  C/C++:
    Built as dynamic libs?:      NO
    C++ standard:                11
    C++ Compiler:                C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.43.34808/bin/Hostx64/x64/cl.exe  (ver 19.43.34810.0)
    C++ flags (Release):         /DWIN32 /D_WINDOWS /W4 /GR  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:precise    /EHa /wd4127 /wd4251 /wd4324 /wd4275 /wd4512 /wd4589 /wd4819 /MP  /O2 /Ob2 /DNDEBUG
    C++ flags (Debug):           /DWIN32 /D_WINDOWS /W4 /GR  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:precise    /EHa /wd4127 /wd4251 /wd4324 /wd4275 /wd4512 /wd4589 /wd4819 /MP  /Zi /Ob0 /Od /RTC1
    C Compiler:                  C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.43.34808/bin/Hostx64/x64/cl.exe
    C flags (Release):           /DWIN32 /D_WINDOWS /W3  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:precise    /MP   /O2 /Ob2 /DNDEBUG
    C flags (Debug):             /DWIN32 /D_WINDOWS /W3  /D _CRT_SECURE_NO_DEPRECATE /D _CRT_NONSTDC_NO_DEPRECATE /D _SCL_SECURE_NO_WARNINGS /Gy /bigobj /Oi  /fp:precise    /MP /Zi /Ob0 /Od /RTC1
    Linker flags (Release):      /machine:x64  /NODEFAULTLIB:atlthunk.lib /INCREMENTAL:NO  /NODEFAULTLIB:libcmtd.lib /NODEFAULTLIB:libcpmtd.lib /NODEFAULTLIB:msvcrtd.lib
    Linker flags (Debug):        /machine:x64  /NODEFAULTLIB:atlthunk.lib /debug /INCREMENTAL  /NODEFAULTLIB:libcmt.lib /NODEFAULTLIB:libcpmt.lib /NODEFAULTLIB:msvcrt.lib
    ccache:                      NO
    Precompiled headers:         YES
    Filesystem support is disabled
    Extra dependencies:          wsock32 comctl32 gdi32 ole32 setupapi ws2_32 cudart_static.lib nppc.lib nppial.lib nppicc.lib nppidei.lib nppif.lib nppig.lib nppim.lib nppist.lib nppisu.lib nppitc.lib npps.lib cublas.lib cudnn.lib cufft.lib -LIBPATH:C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v12.8/lib/x64
    3rdparty dependencies:       libprotobuf ade ittnotify libjpeg-turbo libwebp libpng libtiff libopenjp2 IlmImf zlib ippiw ippicv

  OpenCV modules:
    To be built:                 aruco bgsegm bioinspired calib3d ccalib core cudaarithm cudabgsegm cudacodec cudafeatures2d cudafilters cudaimgproc cudalegacy cudaobjdetect cudaoptflow cudastereo cudawarping cudev datasets dnn dnn_objdetect dnn_superres dpm face features2d flann fuzzy gapi hfs highgui img_hash imgcodecs imgproc intensity_transform java line_descriptor mcc ml objdetect optflow phase_unwrapping photo plot python3 quality rapid reg rgbd saliency shape signal stereo stitching structured_light superres surface_matching text tracking ts video videoio videostab wechat_qrcode xfeatures2d ximgproc xobjdetect xphoto
    Disabled:                    world
    Disabled by dependency:      -
    Unavailable:                 alphamat cannops cvv fastcv freetype hdf julia matlab ovis python2 sfm viz
    Applications:                tests perf_tests apps
    Documentation:               NO
    Non-free algorithms:         NO

  Windows RT support:            NO

  GUI:                           WIN32UI
    Win32 UI:                    YES
    VTK support:                 NO

  Media I/O:
    ZLib:                        build (ver 1.3.1)
    JPEG:                        build-libjpeg-turbo (ver 3.0.3-70)
      SIMD Support Request:      YES
      SIMD Support:              NO
    WEBP:                        build (ver decoder: 0x0209, encoder: 0x020f, demux: 0x0107)
    AVIF:                        NO
    PNG:                         build (ver 1.6.43)
      SIMD Support Request:      YES
      SIMD Support:              YES (Intel SSE)
    TIFF:                        build (ver 42 - 4.6.0)
    JPEG 2000:                   build (ver 2.5.0)
    OpenEXR:                     build (ver 2.3.0)
    GIF:                         NO
    HDR:                         YES
    SUNRASTER:                   YES
    PXM:                         YES
    PFM:                         YES

  Video I/O:
    FFMPEG:                      YES (prebuilt binaries)
      avcodec:                   YES (58.134.100)
      avformat:                  YES (58.76.100)
      avutil:                    YES (56.70.100)
      swscale:                   YES (5.9.100)
      avresample:                YES (4.0.0)
    GStreamer:                   NO
    DirectShow:                  YES
    Media Foundation:            YES
      DXVA:                      YES

  Parallel framework:            Concurrency

  Trace:                         YES (with Intel ITT)

  Other third-party libraries:
    Intel IPP:                   2021.12.0 [2021.12.0]
           at:                   J:/opencv-4.11.0/build/3rdparty/ippicv/ippicv_win/icv
    Intel IPP IW:                sources (2021.12.0)
              at:                J:/opencv-4.11.0/build/3rdparty/ippicv/ippicv_win/iw
    Lapack:                      NO
    Eigen:                       NO
    Custom HAL:                  NO
    Protobuf:                    build (3.19.1)
    Flatbuffers:                 builtin/3rdparty (23.5.9)

  NVIDIA CUDA:                   YES (ver 12.8, CUFFT CUBLAS)
    NVIDIA GPU arch:             50 52 60 61 70 75 80 86 89 90
    NVIDIA PTX archs:            90

  cuDNN:                         YES (ver 9.8.0)

  OpenCL:                        YES (NVD3D11)
    Include path:                J:/opencv-4.11.0/3rdparty/include/opencl/1.2
    Link libraries:              Dynamic load

  Python 3:
    Interpreter:                 C:/Users/username/AppData/Local/Programs/Python/Python311/python.exe (ver 3.11.9)
    Libraries:                   C:/Users/username/AppData/Local/Programs/Python/Python311/libs/python311.lib (ver 3.11.9)
    Limited API:                 NO
    numpy:                       C:/Users/username/AppData/Local/Programs/Python/Python311/Lib/site-packages/numpy/_core/include (ver 2.1.3)
    install path:                C:/Users/username/AppData/Local/Programs/Python/Python311/Lib/site-packages/cv2/python-3.11

  Python (for build):            C:/Users/username/AppData/Local/Programs/Python/Python311/python.exe

  Java:
    ant:                         NO
    Java:                        YES (ver 21.0.1)
    JNI:                         C:/Program Files/Java/jdk-21/include C:/Program Files/Java/jdk-21/include/win32 C:/Program Files/Java/jdk-21/include
    Java wrappers:               YES (JAVA)
    Java tests:                  NO

  Install to:                    J:/opencv-4.11.0/build/install
-----------------------------------------------------------------
```

## License
This project is licensed under the [Apache License 2.0](LICENSE), consistent with OpenCV's licensing.

## Acknowledgments
- [OpenCV](https://opencv.org/) for the core library and contrib modules.
- [NVIDIA](https://developer.nvidia.com/) for CUDA and cuDNN support.
