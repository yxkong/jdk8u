# 设定语言选项，必须设置
export LANG=C
# Mac平台，C编译器不再是GCC，而是clang
export CC=clang
export CXX=clang++
## 是否使用clang，如果使用的是GCC编译，该选项应该设置为false
export USE_CLANG=true
#export CC=gcc
#export CXX=g++
## 是否使用clang，如果使用的是GCC编译，该选项应该设置为false
#export USE_CLANG=false
export CXXFLAGS=-stdlib=libc++
# 跳过clang的一些严格的语法检查，不然会将N多的警告作为Error
export COMPILER_WARNINGS_FATAL=false
# 链接时使用的参数
export LFLAGS='-Xlinker -lstdc++'
# 使用64位数据模型
export LP64=1
# 告诉编译平台是64位，不然会按照32位来编译
export ARCH_DATA_MODEL=64
# 允许自动下载依赖
export ALLOW_DOWNLOADS=true
# 并行编译的线程数，编译时长
export HOTSPOT_BUILD_JOBS=4
export PARALLEL_COMPILE_JOBS=4
# 是否跳过与先前版本的比较
export SKIP_COMPARE_IMAGES=true
# 是否使用预编译头文件，加快编译速度
export USE_PRECOMPILED_HEADER=true
# 是否使用增量编译
export INCREMENTAL_BUILD=true
# 编译内容
export BUILD_LANGTOOL=true
export BUILD_JAXP=true
export BUILD_JAXWS=true
export BUILD_CORBA=true
export BUILD_HOTSPOT=true
export BUILD_JDK=true
# 编译版本
export SKIP_DEBUG_BUILD=true
export SKIP_FASTDEBUG_BULID=false
export DEBUG_NAME=debug
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
# 避开javaws和浏览器Java插件之类部分的build
export BUILD_DEPLOY=false
export BUILD_INSTALL=false

# 最后需要干掉这两个环境变量（如果你配置过），不然会发生诡异的事件
unset JAVA_HOME
unset CLASSPATH

# 调试信息时需要的objcopy，加上这个，就不用在configure中添加了
export OBJCOPY=gobjcopy
