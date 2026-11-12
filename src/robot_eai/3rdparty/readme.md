3rdparty整个目录文件太大

- https://github.com/airockchip/rknn-toolkit2 SDK包内会包含其完整资料

- 或从 https://github.com/kyshipit/eai-rk3588/tree/main/runtime/3rdparty 完整目录下载

| 子目录/组件              | 用途说明                                                     | 官方/主要下载地址                                            |
| :----------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| **`rkllm`**              | 瑞芯微大语言模型（LLM）部署SDK，用于在RK3588 NPU上运行大模型。 | `https://github.com/airockchip/rknn-llm`                     |
| **`librga`**             | 瑞芯微2D图形加速库（RGA），用于图像缩放、旋转、格式转换等硬件加速。 | 源码：`https://github.com/airockchip/librga` 预编译库：联想网盘（提取码`rkrga`） |
| **`rknpu2`**             | 瑞芯微NPU运行时库，提供`librknnrt.so`和头文件，是NPU推理的基础。 | `https://github.com/rockchip-linux/rknpu2`                   |
| **`opencv`**             | 经典计算机视觉库，用于图像处理、显示等。                     | 源码：`https://github.com/opencv/opencv/releases` 官网：`https://opencv.org/` |
| **`fftw`**               | 快速傅里叶变换库，常用于音频信号处理。                       | 官网源码：`http://www.fftw.org/download.html`                |
| **`jpeg_turbo`**         | JPEG图像编解码加速库。                                       | `https://github.com/libjpeg-turbo/libjpeg-turbo/releases`    |
| **`libsndfile`**         | 音频文件读写库（WAV等格式）。                                | `https://github.com/libsndfile/libsndfile`                   |
| **`kaldi_native_fbank`** | 语音特征提取（Fbank）库，用于语音识别前端。                  | `https://github.com/csukuangfj/kaldi-native-fbank`           |
| **`stb_image`**          | 单头文件图像加载库，用于解码JPG/PNG等。                      | `https://github.com/nothings/stb`（查找`stb_image.h`）       |
| **`opencl`**             | 开放计算语言，可能用于GPU/NPU的通用计算加速。                | 通常由板卡厂商BSP（板级支持包）提供，或从Khronos Group获取规范实现。 |
| **`allocator`**          | 内存分配器（可能是`libtcmalloc`或类似优化库）。              | 通常可从系统包管理器或对应开源项目页面获取。                 |
| **`timer`**              | 定时器相关库/头文件。                                        | 通常由Rockchip SDK提供，或从Linux内核/U-Boot源码中提取。     |

**关于`rknn-toolkit2`**：它是**PC端模型转换工具**，通常不放在板端的`3rdparty`中，但从`https://github.com/airockchip/rknn-toolkit2`下载的SDK包内会包含其完整资料。