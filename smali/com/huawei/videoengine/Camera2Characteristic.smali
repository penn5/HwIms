.class public Lcom/huawei/videoengine/Camera2Characteristic;
.super Ljava/lang/Object;
.source "Camera2Characteristic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "hme_engine_java"


# instance fields
.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mManager:Landroid/hardware/camera2/CameraManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 24
    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 29
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 30
    return-void
.end method

.method private init()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "-l_1_I":I
    const/4 v1, 0x0

    .line 98
    .local v1, "-l_2_I":I
    const/4 v2, 0x0

    .line 100
    .local v2, "-l_3_I":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    .line 103
    :try_start_0
    iget-object v8, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "-l_4_R":Ljava/lang/Object;
    array-length v0, v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 139
    if-eqz v2, :cond_3

    .line 147
    return v10

    .line 105
    .end local v3    # "-l_4_R":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 107
    .local v4, "-l_5_R":Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 108
    const/4 v8, -0x1

    return v8

    .line 113
    .end local v4    # "-l_5_R":Ljava/lang/Object;
    .restart local v3    # "-l_4_R":Ljava/lang/Object;
    :cond_0
    new-instance v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    invoke-direct {v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>()V

    .line 115
    .restart local v4    # "-l_5_R":Ljava/lang/Object;
    :try_start_1
    iget-object v8, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 116
    .local v5, "-l_6_R":Ljava/lang/Object;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 117
    .local v6, "-l_7_R":Ljava/lang/Object;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 118
    .local v7, "-l_8_R":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Facing external, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 126
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 128
    iget-object v8, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "hme_engine_java"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v6    # "-l_7_R":Ljava/lang/Object;
    .end local v7    # "-l_8_R":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .restart local v6    # "-l_7_R":Ljava/lang/Object;
    .restart local v7    # "-l_8_R":Ljava/lang/Object;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Facing front, Orientation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 133
    .end local v5    # "-l_6_R":Ljava/lang/Object;
    .end local v6    # "-l_7_R":Ljava/lang/Object;
    .end local v7    # "-l_8_R":Ljava/lang/Object;
    :catch_1
    move-exception v5

    .line 135
    .restart local v5    # "-l_6_R":Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_2

    .line 121
    .restart local v6    # "-l_7_R":Ljava/lang/Object;
    .restart local v7    # "-l_8_R":Ljava/lang/Object;
    :cond_2
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Facing back, Orientation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 141
    .end local v4    # "-l_5_R":Ljava/lang/Object;
    .end local v5    # "-l_6_R":Ljava/lang/Object;
    .end local v6    # "-l_7_R":Ljava/lang/Object;
    .end local v7    # "-l_8_R":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v8, "hme_engine_java"

    const-string/jumbo v9, "no valid Camera!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    .line 144
    return v10
.end method

.method public static isFaceFront(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 160
    .local v0, "-l_2_I":I
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 161
    .local v1, "-l_3_R":Ljava/lang/Object;
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 162
    .local v2, "-l_4_R":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 172
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "i is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :goto_0
    return v0

    .line 164
    .restart local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    .end local v2    # "-l_4_R":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 177
    .restart local v2    # "-l_4_R":Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;I)I
    .locals 13

    .prologue
    .line 221
    const/4 v7, 0x0

    .line 222
    .local v7, "-l_6_R":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 223
    .local v8, "-l_7_I":I
    const/4 v9, 0x0

    .line 225
    .local v9, "-l_8_I":I
    :try_start_0
    iget-object v11, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v11}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "-l_3_R":Ljava/lang/Object;
    iget-object v11, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    aget-object v12, v4, p2

    invoke-virtual {v11, v12}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 233
    .end local v4    # "-l_3_R":Ljava/lang/Object;
    .end local v7    # "-l_6_R":Ljava/lang/Object;
    :goto_0
    if-eqz v7, :cond_0

    .line 237
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 238
    invoke-virtual {v7, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 239
    .local v10, "-l_9_R":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 243
    const-class v11, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v5

    .line 245
    .local v5, "-l_4_R":Ljava/lang/Object;
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/util/Range;

    .line 248
    .local v6, "-l_5_R":Ljava/lang/Object;
    move-object v0, v6

    .local v0, "-l_10_R":Ljava/lang/Object;
    array-length v1, v6

    .local v1, "-l_11_I":I
    const/4 v2, 0x0

    .local v2, "-l_12_I":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 256
    array-length v11, v5

    new-array v11, v11, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput-object v11, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 258
    move-object v0, v5

    array-length v1, v5

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_4

    .line 269
    const/4 v11, 0x0

    return v11

    .line 229
    .end local v0    # "-l_10_R":Ljava/lang/Object;
    .end local v1    # "-l_11_I":I
    .end local v2    # "-l_12_I":I
    .end local v5    # "-l_4_R":Ljava/lang/Object;
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v10    # "-l_9_R":Ljava/lang/Object;
    .restart local v7    # "-l_6_R":Ljava/lang/Object;
    :catch_0
    move-exception v10

    .line 231
    .restart local v10    # "-l_9_R":Ljava/lang/Object;
    invoke-virtual {v10}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v7    # "-l_6_R":Ljava/lang/Object;
    .end local v10    # "-l_9_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v11, "hme_engine_java"

    const-string/jumbo v12, "not support this resolution"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v11, -0x1

    return v11

    .line 240
    .restart local v10    # "-l_9_R":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v11, "hme_engine_java"

    const-string/jumbo v12, "map is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v11, -0x1

    return v11

    .line 248
    .restart local v0    # "-l_10_R":Ljava/lang/Object;
    .restart local v1    # "-l_11_I":I
    .restart local v2    # "-l_12_I":I
    .restart local v5    # "-l_4_R":Ljava/lang/Object;
    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    :cond_2
    aget-object v3, v0, v2

    .line 250
    .local v3, "-l_13_R":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v11, v8, :cond_3

    .line 248
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    .line 258
    .end local v3    # "-l_13_R":Ljava/lang/Object;
    :cond_4
    aget-object v3, v5, v2

    .line 260
    .restart local v3    # "-l_13_R":Ljava/lang/Object;
    iget-object v11, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    new-instance v12, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v12}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v12, v11, v9

    .line 261
    iget-object v11, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v11, v11, v9

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v12

    iput v12, v11, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 262
    iget-object v11, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v11, v11, v9

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v12

    iput v12, v11, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 263
    iget-object v11, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v11, v11, v9

    iput v8, v11, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 264
    iget-object v11, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v11, v11, v9

    const/4 v12, -0x1

    iput v12, v11, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    .line 265
    add-int/lit8 v9, v9, 0x1

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getCapabilityArray(Ljava/lang/String;)[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "-l_2_R":Ljava/lang/Object;
    new-array v1, v4, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 190
    .local v1, "-l_3_R":Ljava/lang/Object;
    iget-object v4, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "-l_4_R":Ljava/lang/Object;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 212
    return-object v1

    .line 192
    .end local v2    # "-l_4_R":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 194
    iget-object v4, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 196
    return-object v1

    .line 200
    .restart local v2    # "-l_4_R":Ljava/lang/Object;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 202
    .local v3, "-l_5_R":Ljava/lang/Object;
    iget-object v4, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    iget v4, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-virtual {p0, v3, v4}, Lcom/huawei/videoengine/Camera2Characteristic;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;I)I

    .line 206
    iget-object v4, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    check-cast v4, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    return-object v4
.end method

.method public getDeviceUniqueName(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 298
    :cond_0
    if-gez p1, :cond_3

    .line 299
    :cond_1
    return-object v2

    .line 289
    :cond_2
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "GetDeviceUniqueName  is not initinitDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 292
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 294
    return-object v2

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUniqueName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "-l_3_R":Ljava/lang/Object;
    :try_start_0
    iget-object v5, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "-l_4_R":Ljava/lang/Object;
    iget-object v5, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    aget-object v6, v1, p2

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 61
    .local v2, "-l_5_R":Ljava/lang/Object;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 62
    .local v3, "-l_6_R":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Facing external, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 76
    .local v4, "-l_7_R":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .end local v3    # "-l_6_R":Ljava/lang/Object;
    .end local v4    # "-l_7_R":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 64
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    .restart local v1    # "-l_4_R":Ljava/lang/Object;
    .restart local v3    # "-l_6_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v5, "hme_engine_java"

    const-string/jumbo v6, "i is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v7

    .line 68
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Facing front, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Facing back, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    .restart local v4    # "-l_7_R":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v5, "hme_engine_java"

    const-string/jumbo v6, "ori is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object v7

    .line 84
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    .end local v2    # "-l_5_R":Ljava/lang/Object;
    .end local v3    # "-l_6_R":Ljava/lang/Object;
    .end local v4    # "-l_7_R":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 86
    .restart local v2    # "-l_5_R":Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 87
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getOrientation(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 305
    iget-object v2, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_2_R":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 317
    const/4 v2, -0x1

    return v2

    .line 306
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "getOrientation  is not initinitDeviceList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    goto :goto_0

    .line 309
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 310
    .local v1, "-l_3_R":Ljava/lang/Object;
    iget-object v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "java_GetOrientation device.orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rotation"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    return v2
.end method

.method public numberOfDevices()I
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 275
    :cond_1
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "NumberOfDevices  is not initDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 278
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    return v0
.end method
