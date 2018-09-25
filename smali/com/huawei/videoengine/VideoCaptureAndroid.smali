.class public Lcom/huawei/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static DEBUG:Z = false

.field private static LOGLEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static VERBOSE:Z = false

.field private static captureSysLock:Ljava/util/concurrent/locks/ReentrantLock; = null

.field private static final java_version:Ljava/lang/String; = "iMedia Video 8.0.ViLTE1.B011"

.field private static final model:Ljava/lang/String;

.field private static final numCaptureBuffers:I = 0x3


# instance fields
.field private PIXEL_FORMAT:I

.field private camera:Landroid/hardware/Camera;

.field private capMemorySize:I

.field private captureSystemRunFlag:Z

.field private config_PIXEL_FORMAT:I

.field private context:J

.field private currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

.field private currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

.field private expectedFrameSize:I

.field private g_buffer1:[B

.field private g_buffer2:[B

.field private g_buffer3:[B

.field private id:I

.field private isRunning:Z

.field private isStartPreviewFlag:Z

.field private localPreview:Landroid/view/SurfaceHolder;

.field private orientation:I

.field private ownsBuffers:Z

.field pixelFormat:Landroid/graphics/PixelFormat;

.field private sysLockFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    sput v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    .line 77
    sget v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    .line 78
    sget v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    if-gt v0, v2, :cond_1

    :goto_1
    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v1, v2

    .line 78
    goto :goto_1
.end method

.method public constructor <init>(IJLandroid/hardware/Camera;Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 6

    .prologue
    const/16 v2, 0x11

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 34
    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 40
    iput v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 43
    iput v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I

    .line 45
    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 47
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 49
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 51
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->sysLockFlag:Z

    .line 54
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    .line 60
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    .line 66
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 67
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->orientation:I

    .line 68
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 70
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 71
    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 73
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 80
    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 157
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "VideoCaptureAndroid.java! enter VideoCaptureAndroid! java version:iMedia Video 8.0.ViLTE1.B011"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device model is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme-video"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 163
    :try_start_0
    new-instance v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v1}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 164
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 166
    iput p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 167
    iput-wide p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 168
    iput-object p4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 169
    iput-object p5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 170
    iget v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v1, v2}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    .line 174
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v1, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 179
    :goto_0
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "VideoCaptureAndroid.java! leave VideoCaptureAndroid!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 176
    :cond_0
    :try_start_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "Java VideoCaptureAndroid fail! not support format:%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme-video"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    .local v0, "-l_6_R":Ljava/lang/Object;
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private setPreviewCallback()V
    .locals 7

    .prologue
    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreviewCallback, sdk version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 953
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v4, v4, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v5, v5, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v5, v5, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x8

    .line 954
    .local v0, "-l_1_I":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x7

    if-gt v4, v5, :cond_1

    .line 1018
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1030
    :goto_0
    return-void

    .line 948
    .end local v0    # "-l_1_I":I
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Camera not initialized in setPreviewCallback!"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void

    .line 956
    .restart local v0    # "-l_1_I":I
    :cond_1
    const/4 v2, 0x0

    .line 958
    .local v2, "-l_2_R":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "-l_3_I":I
    :goto_1
    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 1010
    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    .line 1013
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1014
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1022
    .end local v0    # "-l_1_I":I
    .end local v2    # "-l_2_R":Ljava/lang/Object;
    .end local v3    # "-l_3_I":I
    :catch_0
    move-exception v1

    .line 1024
    .local v1, "-l_1_R":Ljava/lang/Object;
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "Failed in setPreviewCallback!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void

    .line 962
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    .restart local v0    # "-l_1_I":I
    .restart local v2    # "-l_2_R":Ljava/lang/Object;
    .restart local v3    # "-l_3_I":I
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 988
    :try_start_1
    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    if-ne v4, v0, :cond_5

    .line 993
    :goto_2
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 999
    :goto_3
    if-eqz v2, :cond_6

    .line 1006
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1007
    const/4 v2, 0x0

    .line 958
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 966
    :pswitch_0
    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    if-ne v4, v0, :cond_3

    .line 971
    :goto_4
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    goto :goto_3

    .line 968
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    goto :goto_4

    .line 977
    :pswitch_1
    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    if-ne v4, v0, :cond_4

    .line 982
    :goto_5
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    goto :goto_3

    .line 979
    :cond_4
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    goto :goto_5

    .line 990
    :cond_5
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    goto :goto_2

    .line 1001
    :cond_6
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "null == buffer in local setPreviewCallback!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1002
    return-void

    .line 962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public configureCameraEncoder(II)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "#singleBox# ConfigureCameraEncoder!startkbps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, p1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " kbps keyInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 207
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 215
    .local v1, "-l_3_R":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 225
    const-string/jumbo v4, "double_stream_bit_rate"

    invoke-virtual {v1, v4, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dengxijia: set start bitrate to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, p1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " kbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 241
    return v6

    .line 209
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera not initialized!!!id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    const/4 v0, -0x1

    .line 239
    .local v0, "-l_3_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    return v7

    .line 217
    .end local v0    # "-l_3_I":I
    .restart local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_1
    :try_start_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "setCaptureEncoderRate! null == parameters!"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    const/4 v2, -0x1

    .line 239
    .local v2, "-l_4_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    return v7

    .line 232
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    .end local v2    # "-l_4_I":I
    :catch_0
    move-exception v1

    .line 234
    .restart local v1    # "-l_3_R":Ljava/lang/Object;
    :try_start_3
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "Failed to ConfigureCameraEncoder"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    const/4 v2, -0x1

    .line 239
    .restart local v2    # "-l_4_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    return v7

    .line 239
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    .end local v2    # "-l_4_I":I
    :catchall_0
    move-exception v3

    .local v3, "-l_5_R":Ljava/lang/Object;
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public deleteVideoCaptureAndroid(Lcom/huawei/videoengine/VideoCaptureAndroid;)V
    .locals 4

    .prologue
    .line 85
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "VideoCaptureAndroid.java! enter DeleteVideoCaptureAndroid!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CaptureSystemRunFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isRunningFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-nez v2, :cond_0

    .line 139
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureAndroid;->freeCaptureResource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "VideoCaptureAndroid.java! leave DeleteVideoCaptureAndroid!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 96
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 103
    :goto_1
    :try_start_2
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "before camera.release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 112
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "camera already free!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_2
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "after camera.release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 98
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureAndroid;->stopCapture()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 106
    :cond_2
    :try_start_5
    iget-object v2, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 107
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 108
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "-l_2_R":Ljava/lang/Object;
    :try_start_6
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "Failed to delete camera android!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 149
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    return-void
.end method

.method public freeCaptureResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 187
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 188
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 189
    iput v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 191
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 192
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 193
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 194
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 195
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 196
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 197
    iput v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    .line 198
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "VideoCaptureAndroid.java! leave FreeCaptureResource!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .prologue
    .line 678
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 680
    :try_start_0
    sget-boolean v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    if-nez v2, :cond_1

    .line 686
    :goto_0
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 725
    :cond_0
    :goto_1
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 727
    return-void

    .line 682
    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "preview frame length %d context %x"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 720
    .local v0, "-l_3_R":Ljava/lang/Object;
    :try_start_2
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "Failed in onPreviewFrame!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 725
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 721
    return-void

    .line 686
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 692
    :try_start_3
    array-length v2, p1

    iget v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    if-eq v2, v3, :cond_3

    .line 708
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p1

    const/4 v5, 0x0

    const-string/jumbo v6, "err! frame delivered data.length:%d, expectedFrameSize:%d "

    const-string/jumbo v7, "hme-video"

    .line 709
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 708
    invoke-static {v2, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 725
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 694
    .end local v1    # "-l_4_R":Ljava/lang/Object;
    :cond_3
    :try_start_4
    iget v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/huawei/videoengine/VideoCaptureAndroid;->provideCameraFrame([BIJ)V

    .line 695
    sget-boolean v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    if-nez v2, :cond_4

    .line 700
    :goto_2
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_1

    .line 697
    :cond_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "frame delivered"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public openFlashLight(Z)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OpenFlashLight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1044
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 1050
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1051
    .local v1, "-l_2_R":Ljava/lang/Object;
    const/4 v4, 0x1

    if-eq v4, p1, :cond_1

    .line 1058
    const-string/jumbo v4, "off"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1059
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "close device FlashLight!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1075
    const/4 v4, 0x0

    return v4

    .line 1046
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera not initialized!!!id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    const/4 v0, -0x1

    .line 1073
    .local v0, "-l_2_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1047
    return v6

    .line 1053
    .end local v0    # "-l_2_I":I
    .restart local v1    # "-l_2_R":Ljava/lang/Object;
    :cond_1
    :try_start_2
    const-string/jumbo v4, "torch"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "open device FlashLight!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1064
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1066
    .restart local v1    # "-l_2_R":Ljava/lang/Object;
    :try_start_3
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "Failed to OpenFlashLight"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1070
    const/4 v2, -0x1

    .line 1073
    .local v2, "-l_3_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1070
    return v6

    .line 1073
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    .end local v2    # "-l_3_I":I
    :catchall_0
    move-exception v3

    .local v3, "-l_4_R":Ljava/lang/Object;
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method native provideCameraFrame([BIJ)V
.end method

.method public requestKeyFrame()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 287
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "#singleBox# requestKeyFrame!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 291
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 297
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 298
    .local v1, "-l_1_R":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 307
    const-string/jumbo v4, "query_frame"

    const-string/jumbo v5, "i_frame"

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "#singleBox# requestKeyFrame set value!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 311
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "#singleBox# requestKeyFrame setParameter!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    return v6

    .line 293
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera not initialized!!!id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    const/4 v0, -0x1

    .line 328
    .local v0, "-l_1_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    return v7

    .line 300
    .end local v0    # "-l_1_I":I
    .restart local v1    # "-l_1_R":Ljava/lang/Object;
    :cond_1
    :try_start_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "setCaptureEncoderRate! null == parameters!"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    const/4 v2, -0x1

    .line 328
    .local v2, "-l_2_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    return v7

    .line 320
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    .end local v2    # "-l_2_I":I
    :catch_0
    move-exception v1

    .line 322
    .restart local v1    # "-l_1_R":Ljava/lang/Object;
    :try_start_3
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "Failed to requestKeyFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    const/4 v2, -0x1

    .line 328
    .restart local v2    # "-l_2_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    return v7

    .line 328
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    .end local v2    # "-l_2_I":I
    :catchall_0
    move-exception v3

    .local v3, "-l_3_R":Ljava/lang/Object;
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public setCaptureEncoderRate(I)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "#singleBox# setCaptureEncoderRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, p1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " kbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 257
    .local v1, "-l_2_R":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 266
    const-string/jumbo v4, "double_stream_bit_rate"

    invoke-virtual {v1, v4, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dengxijia: set bitrate to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, p1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " kbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 282
    return v6

    .line 252
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera not initialized!!!id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    const/4 v0, -0x1

    .line 279
    .local v0, "-l_2_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    return v7

    .line 259
    .end local v0    # "-l_2_I":I
    .restart local v1    # "-l_2_R":Ljava/lang/Object;
    :cond_1
    :try_start_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "setCaptureEncoderRate! null == parameters!"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    const/4 v2, -0x1

    .line 279
    .local v2, "-l_3_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 260
    return v7

    .line 272
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    .end local v2    # "-l_3_I":I
    :catch_0
    move-exception v1

    .line 274
    .restart local v1    # "-l_2_R":Ljava/lang/Object;
    :try_start_3
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "Failed to setCaptureEncoderRate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    const/4 v2, -0x1

    .line 279
    .restart local v2    # "-l_3_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 277
    return v7

    .line 279
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    .end local v2    # "-l_3_I":I
    :catchall_0
    move-exception v3

    .local v3, "-l_4_R":Ljava/lang/Object;
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public setPreviewRotation(I)I
    .locals 14
    .param p1, "-l_6_I"    # I

    .prologue
    const/16 v13, 0xe

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 784
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SetPreviewRotation start, rotation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "hme-video"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    sget-object v9, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 789
    :try_start_0
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v9, :cond_2

    .line 797
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 798
    .local v0, "-l_2_I":I
    const/4 v2, 0x0

    .line 799
    .local v2, "-l_3_I":I
    const/4 v3, 0x0

    .line 800
    .local v3, "-l_4_I":I
    const/4 v4, 0x0

    .line 802
    .local v4, "-l_5_I":I
    if-nez v0, :cond_3

    .line 810
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 811
    .local v5, "-l_6_I":I
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v9, v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-eq v9, v10, :cond_4

    .line 835
    .end local v5    # "-l_6_I":I
    :goto_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x7

    if-gt v9, v10, :cond_7

    .line 844
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 845
    .local v7, "-l_7_R":Ljava/lang/Object;
    invoke-virtual {v7, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 846
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v9, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    .end local v7    # "-l_7_R":Ljava/lang/Object;
    :goto_2
    if-nez v0, :cond_8

    .line 871
    :cond_1
    :goto_3
    sget-object v9, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 875
    return v11

    .line 791
    .end local v0    # "-l_2_I":I
    .end local v2    # "-l_3_I":I
    .end local v3    # "-l_4_I":I
    .end local v4    # "-l_5_I":I
    .end local p1    # "-l_6_I":I
    :cond_2
    :try_start_1
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "Camera not initialized in SetPreviewRotation!"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "hme-video"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    const/4 v0, -0x1

    .line 871
    .restart local v0    # "-l_2_I":I
    sget-object v9, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 792
    return v12

    .line 802
    .restart local v2    # "-l_3_I":I
    .restart local v3    # "-l_4_I":I
    .restart local v4    # "-l_5_I":I
    :cond_3
    :try_start_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v13, :cond_0

    .line 804
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v2, v9, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 805
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v3, v9, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 806
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v4, v9, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 807
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->stopCapture()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 863
    .end local v0    # "-l_2_I":I
    .end local v2    # "-l_3_I":I
    .end local v3    # "-l_4_I":I
    .end local v4    # "-l_5_I":I
    :catch_0
    move-exception v1

    .line 865
    .local v1, "-l_2_R":Ljava/lang/Object;
    :try_start_3
    const-string/jumbo v9, "hme-video"

    const-string/jumbo v10, "Failed in setPreviewCallback!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "hme-video"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 869
    const/4 v2, -0x1

    .line 871
    .restart local v2    # "-l_3_I":I
    sget-object v9, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 869
    return v12

    .line 818
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    .restart local v0    # "-l_2_I":I
    .restart local v3    # "-l_4_I":I
    .restart local v4    # "-l_5_I":I
    .restart local v5    # "-l_6_I":I
    :cond_4
    :try_start_4
    sget-object v9, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string/jumbo v10, "GT-I9001"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 820
    :cond_5
    rsub-int v9, p1, 0x168

    add-int/lit16 v9, v9, 0xb4

    rem-int/lit16 p1, v9, 0x168

    .end local v5    # "-l_6_I":I
    .restart local p1    # "-l_6_I":I
    goto/16 :goto_1

    .line 818
    .end local p1    # "-l_6_I":I
    .restart local v5    # "-l_6_I":I
    :cond_6
    sget-object v9, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string/jumbo v10, "LG-E730"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 825
    rsub-int v9, p1, 0x168

    rem-int/lit16 p1, v9, 0x168

    .end local v5    # "-l_6_I":I
    .restart local p1    # "-l_6_I":I
    goto/16 :goto_1

    .line 837
    :cond_7
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v9, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 871
    .end local v0    # "-l_2_I":I
    .end local v2    # "-l_3_I":I
    .end local v3    # "-l_4_I":I
    .end local v4    # "-l_5_I":I
    .end local p1    # "-l_6_I":I
    :catchall_0
    move-exception v8

    .local v8, "-l_8_R":Ljava/lang/Object;
    sget-object v9, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .line 849
    .end local v8    # "-l_8_R":Ljava/lang/Object;
    .restart local v0    # "-l_2_I":I
    .restart local v2    # "-l_3_I":I
    .restart local v3    # "-l_4_I":I
    .restart local v4    # "-l_5_I":I
    .restart local p1    # "-l_6_I":I
    :cond_8
    :try_start_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v13, :cond_1

    .line 852
    iget v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I

    .line 853
    .local v6, "-l_7_I":I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/huawei/videoengine/VideoCaptureAndroid;->startCapture(IIII)I

    .line 854
    const-string/jumbo v9, "hme-video"

    const-string/jumbo v10, "before setPreviewCallback "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->setPreviewCallback()V

    .line 856
    const-string/jumbo v9, "hme-video"

    const-string/jumbo v10, "before startPreview"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->startPreview()V

    .line 858
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method

.method public startCapture(IIII)I
    .locals 28

    .prologue
    .line 335
    sget-boolean v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    if-nez v24, :cond_5

    .line 338
    :goto_0
    const-string/jumbo v24, "hme-video"

    const-string/jumbo v25, "StartCapture "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 345
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    .line 348
    .local v18, "-l_5_R":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v20

    .line 349
    .local v20, "-l_6_R":Ljava/lang/Object;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v21

    .line 350
    .local v21, "-l_7_I":I
    const/16 v22, 0x0

    .line 351
    .local v22, "-l_8_I":I
    const/16 v23, 0x0

    .line 353
    .local v23, "-l_9_I":I
    if-lez v21, :cond_7

    .line 359
    const/16 v24, 0x62

    move/from16 v0, v24

    move/from16 v1, p4

    if-eq v0, v1, :cond_8

    move/from16 v3, p4

    .line 375
    :goto_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture: suport format num:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "-l_10_R":Ljava/lang/Object;
    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_a

    .line 388
    .local v3, "-l_10_I":I
    if-eqz v22, :cond_b

    move v4, v3

    .line 413
    .end local v3    # "-l_10_I":I
    .local v4, "-l_10_I":I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v24, v0

    move/from16 v0, p1

    move-object/from16 v1, v24

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v24, v0

    move/from16 v0, p2

    move-object/from16 v1, v24

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v24, v0

    move/from16 v0, p3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 425
    .local v7, "-l_11_R":Ljava/lang/Object;
    if-eqz v7, :cond_f

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 434
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture: current format:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    .line 456
    :cond_2
    invoke-virtual {v7, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 459
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture! PIXEL_FORMAT:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " Config PicFormat: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "current PicFormat:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " pixelFormat.bitsPerPixel:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 469
    .local v9, "-l_12_R":Ljava/lang/Object;
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v10

    .line 470
    .local v10, "-l_13_R":Ljava/lang/Object;
    if-eqz v10, :cond_11

    .line 474
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "-l_14_R":Ljava/lang/Object;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_12

    .line 500
    :goto_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "iLocalConfigFrame:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", InputFrameFps:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 505
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_13

    .line 528
    .end local v12    # "-l_14_R":Ljava/lang/Object;
    :goto_5
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 555
    :cond_4
    :goto_6
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string/jumbo v25, "M310"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_19

    .line 572
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 575
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->getLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    move-object/from16 v24, v0

    if-nez v24, :cond_1b

    .line 583
    const-string/jumbo v24, "hme-video"

    const-string/jumbo v25, "localPreview null!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_8
    mul-int v24, p1, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    div-int/lit8 v11, v24, 0x8

    .line 589
    .local v11, "-l_14_I":I
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 590
    move-object/from16 v0, p0

    iput v11, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 592
    move-object/from16 v0, p0

    iput v4, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 604
    const/16 v24, 0x0

    return v24

    .line 336
    .end local v4    # "-l_10_I":I
    .end local v5    # "-l_10_R":Ljava/lang/Object;
    .end local v7    # "-l_11_R":Ljava/lang/Object;
    .end local v9    # "-l_12_R":Ljava/lang/Object;
    .end local v10    # "-l_13_R":Ljava/lang/Object;
    .end local v11    # "-l_14_I":I
    .end local v18    # "-l_5_R":Ljava/lang/Object;
    .end local v20    # "-l_6_R":Ljava/lang/Object;
    .end local v21    # "-l_7_I":I
    .end local v22    # "-l_8_I":I
    .end local v23    # "-l_9_I":I
    :cond_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture width:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " height:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " fps:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " previewImageType:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    :cond_6
    :try_start_1
    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "Camera not initialized %d"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    const/16 v17, -0x1

    .line 601
    .local v17, "-l_5_I":I
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 342
    const/16 v24, -0x1

    return v24

    .line 355
    .end local v17    # "-l_5_I":I
    .restart local v18    # "-l_5_R":Ljava/lang/Object;
    .restart local v20    # "-l_6_R":Ljava/lang/Object;
    .restart local v21    # "-l_7_I":I
    .restart local v22    # "-l_8_I":I
    .restart local v23    # "-l_9_I":I
    :cond_7
    :try_start_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture: suport format num: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "is invalid"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    const/4 v3, -0x1

    .line 601
    .restart local v3    # "-l_10_I":I
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 356
    const/16 v24, -0x1

    return v24

    .line 361
    .end local v3    # "-l_10_I":I
    :cond_8
    :try_start_3
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string/jumbo v25, "M310"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 369
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture input rawType is: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "  modle: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " is not supported"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    const/4 v3, -0x1

    .line 601
    .restart local v3    # "-l_10_I":I
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 371
    const/16 v24, -0x1

    return v24

    .line 363
    .end local v3    # "-l_10_I":I
    :cond_9
    const/16 v23, 0x1

    .line 364
    const/16 v24, 0x0

    :try_start_4
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 365
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture change previewImageType from 98(just for M310) to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 594
    .end local v18    # "-l_5_R":Ljava/lang/Object;
    .end local v20    # "-l_6_R":Ljava/lang/Object;
    .end local v21    # "-l_7_I":I
    .end local v22    # "-l_8_I":I
    .end local v23    # "-l_9_I":I
    :catch_0
    move-exception v18

    .line 596
    .restart local v18    # "-l_5_R":Ljava/lang/Object;
    :try_start_5
    const-string/jumbo v24, "hme-video"

    const-string/jumbo v25, "Failed to start camera"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Message"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 599
    const/16 v19, -0x2

    .line 601
    .local v19, "-l_6_I":I
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 599
    const/16 v24, -0x2

    return v24

    .line 377
    .end local v19    # "-l_6_I":I
    .restart local v5    # "-l_10_R":Ljava/lang/Object;
    .restart local v20    # "-l_6_R":Ljava/lang/Object;
    .restart local v21    # "-l_7_I":I
    .restart local v22    # "-l_8_I":I
    .restart local v23    # "-l_9_I":I
    :cond_a
    :try_start_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 380
    .restart local v7    # "-l_11_R":Ljava/lang/Object;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture: suport format:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    if-ne v0, v3, :cond_0

    .line 383
    const/16 v22, 0x1

    goto/16 :goto_2

    .line 390
    .end local v7    # "-l_11_R":Ljava/lang/Object;
    .restart local v3    # "-l_10_I":I
    :cond_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "start capture! not support config format: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget v4, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 392
    .end local v3    # "-l_10_I":I
    .restart local v4    # "-l_10_I":I
    move v6, v4

    .line 393
    .local v6, "-l_11_I":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "-l_12_R":Ljava/lang/Object;
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_c

    .line 405
    if-nez v22, :cond_1

    .line 407
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "start capture! not support default format: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move v4, v6

    goto/16 :goto_3

    .line 393
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 396
    .restart local v10    # "-l_13_R":Ljava/lang/Object;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "StartCapture: suport format:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v4, :cond_d

    .line 402
    :goto_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_9

    .line 399
    :cond_d
    const/16 v22, 0x1

    goto :goto_a

    .line 415
    .end local v6    # "-l_11_I":I
    .end local v9    # "-l_12_R":Ljava/lang/Object;
    .end local v10    # "-l_13_R":Ljava/lang/Object;
    :cond_e
    const-string/jumbo v24, "hme-video"

    const-string/jumbo v25, "null == currentCapability in StartCapture!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 416
    const/4 v6, -0x1

    .line 601
    .restart local v6    # "-l_11_I":I
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 416
    const/16 v24, -0x1

    return v24

    .line 427
    .end local v6    # "-l_11_I":I
    .restart local v7    # "-l_11_R":Ljava/lang/Object;
    :cond_f
    :try_start_7
    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "start capture! null == parameters!"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 428
    const/4 v8, -0x1

    .line 601
    .local v8, "-l_12_I":I
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 428
    const/16 v24, -0x1

    return v24

    .line 440
    .end local v8    # "-l_12_I":I
    :cond_10
    :try_start_8
    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const-string/jumbo v26, "start capture! not support format:%d"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v4, 0x11

    const/16 v24, 0x11

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 451
    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const-string/jumbo v26, "start capture! not support format:NV21"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 452
    const/4 v8, -0x1

    .line 601
    .restart local v8    # "-l_12_I":I
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    const/16 v24, -0x1

    return v24

    .line 472
    .end local v8    # "-l_12_I":I
    .restart local v9    # "-l_12_R":Ljava/lang/Object;
    .restart local v10    # "-l_13_R":Ljava/lang/Object;
    :cond_11
    const/4 v11, -0x1

    .line 601
    .restart local v11    # "-l_14_I":I
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    const/16 v24, -0x1

    return v24

    .line 474
    .end local v11    # "-l_14_I":I
    .restart local v12    # "-l_14_R":Ljava/lang/Object;
    :cond_12
    :try_start_9
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 476
    .local v13, "-l_15_R":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 478
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_4

    .line 508
    .end local v13    # "-l_15_R":Ljava/lang/Object;
    :cond_13
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v12, v0, [I

    .line 515
    invoke-virtual {v7, v12}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 516
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "minFps:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v12, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " maxFps:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v12, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " model:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v12, 0x0

    .line 519
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string/jumbo v25, "XT910"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 521
    :cond_14
    const/16 v24, 0x1388

    const/16 v25, 0x4e20

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    .line 601
    .end local v4    # "-l_10_I":I
    .end local v5    # "-l_10_R":Ljava/lang/Object;
    .end local v7    # "-l_11_R":Ljava/lang/Object;
    .end local v9    # "-l_12_R":Ljava/lang/Object;
    .end local v10    # "-l_13_R":Ljava/lang/Object;
    .end local v12    # "-l_14_R":Ljava/lang/Object;
    .end local v18    # "-l_5_R":Ljava/lang/Object;
    .end local v20    # "-l_6_R":Ljava/lang/Object;
    .end local v21    # "-l_7_I":I
    .end local v22    # "-l_8_I":I
    .end local v23    # "-l_9_I":I
    :catchall_0
    move-exception v16

    .local v16, "-l_18_R":Ljava/lang/Object;
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v16

    .line 519
    .end local v16    # "-l_18_R":Ljava/lang/Object;
    .restart local v4    # "-l_10_I":I
    .restart local v5    # "-l_10_R":Ljava/lang/Object;
    .restart local v7    # "-l_11_R":Ljava/lang/Object;
    .restart local v9    # "-l_12_R":Ljava/lang/Object;
    .restart local v10    # "-l_13_R":Ljava/lang/Object;
    .restart local v12    # "-l_14_R":Ljava/lang/Object;
    .restart local v18    # "-l_5_R":Ljava/lang/Object;
    .restart local v20    # "-l_6_R":Ljava/lang/Object;
    .restart local v21    # "-l_7_I":I
    .restart local v22    # "-l_8_I":I
    .restart local v23    # "-l_9_I":I
    :cond_15
    :try_start_a
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string/jumbo v25, "XT928"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_14

    goto/16 :goto_5

    .line 528
    .end local v12    # "-l_14_R":Ljava/lang/Object;
    :cond_16
    sget-object v24, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string/jumbo v25, "Full Android on exynos4412"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 530
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v12

    .line 532
    .restart local v12    # "-l_14_R":Ljava/lang/Object;
    const-string/jumbo v24, "continuous-picture"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 548
    const-string/jumbo v24, "hme-video"

    const-string/jumbo v25, "Default mode is continuous-picture!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 534
    :cond_17
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v13

    .line 535
    .restart local v13    # "-l_15_R":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "-l_16_R":Ljava/lang/Object;
    :cond_18
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 537
    .local v15, "-l_17_R":Ljava/lang/Object;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "focesMode:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "hme-video"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string/jumbo v24, "continuous-picture"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 540
    const-string/jumbo v24, "hme-video"

    const-string/jumbo v25, "Support continuous-picture mode!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string/jumbo v24, "continuous-picture"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 557
    .end local v12    # "-l_14_R":Ljava/lang/Object;
    .end local v13    # "-l_15_R":Ljava/lang/Object;
    .end local v14    # "-l_16_R":Ljava/lang/Object;
    .end local v15    # "-l_17_R":Ljava/lang/Object;
    :cond_19
    if-nez v23, :cond_1a

    .line 567
    const-string/jumbo v24, "camera_support_stream"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 568
    const-string/jumbo v24, "hme-video"

    const-string/jumbo v25, "#single_box# StartCapture: M310 disalbe 2 streams, only YUV preview stream!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 559
    :cond_1a
    const-string/jumbo v24, "camera_support_stream"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 560
    const-string/jumbo v24, "hme-video"

    const-string/jumbo v25, "#single_box# StartCapture: M310 enalbe double stream!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 578
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_8
.end method

.method public stopCapture()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 609
    sget-boolean v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    if-nez v4, :cond_2

    .line 612
    :goto_0
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 614
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v4, :cond_3

    .line 644
    :cond_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    .line 655
    :try_start_1
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_6

    .line 667
    :cond_1
    :goto_1
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "leave java StopCapture! isRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return v6

    .line 610
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Enter java StopCapture! isRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    :cond_3
    :try_start_2
    iget-boolean v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    .line 618
    :try_start_3
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 619
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 621
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x7

    if-gt v4, v5, :cond_4

    .line 627
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 630
    :goto_2
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_1

    .line 632
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 635
    :catch_0
    move-exception v1

    .line 637
    .local v1, "-l_1_R":Ljava/lang/Object;
    :try_start_4
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "Failed to stop camera"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 638
    const/4 v2, -0x1

    .line 667
    .local v2, "-l_2_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 638
    return v7

    .line 623
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    .end local v2    # "-l_2_I":I
    :cond_4
    :try_start_5
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 667
    :catchall_0
    move-exception v3

    .local v3, "-l_3_R":Ljava/lang/Object;
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 647
    .end local v3    # "-l_3_R":Ljava/lang/Object;
    :cond_5
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "camera==null or camera flag not true in StopCapture! flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme-video"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 648
    const/4 v0, -0x1

    .line 667
    .local v0, "-l_1_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 648
    return v7

    .line 657
    .end local v0    # "-l_1_I":I
    :cond_6
    :try_start_7
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 659
    :catch_1
    move-exception v1

    .line 661
    .restart local v1    # "-l_1_R":Ljava/lang/Object;
    :try_start_8
    const-string/jumbo v4, "hme-video"

    const-string/jumbo v5, "Failed to removeCallback!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 662
    const/4 v2, -0x1

    .line 667
    .restart local v2    # "-l_2_I":I
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 662
    return v7
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .prologue
    .line 730
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 732
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VideoCaptureAndroid.java! enter surfaceChanged, format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", widht="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStartPreviewFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " captureSystemRunFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-nez v2, :cond_1

    .line 759
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "capture system had destroy in surfaceChanged!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    :cond_0
    :goto_0
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 779
    return-void

    .line 740
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 754
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "capture has destory in surfaceChanged!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 765
    .local v0, "-l_5_R":Ljava/lang/Object;
    :try_start_2
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "startPreview Failed in surfaceChanged!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 772
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 768
    return-void

    .line 743
    .end local v0    # "-l_5_R":Ljava/lang/Object;
    :cond_2
    :try_start_3
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-nez v2, :cond_0

    .line 745
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "before start preview in surfaceChanged!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 747
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "after  start preview in surfaceChanged!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 749
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v1

    .local v1, "-l_6_R":Ljava/lang/Object;
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 879
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 882
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VideoCaptureAndroid.java! surfaceCreated! isRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isStartPreviewFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "surfaceCreated! surface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " holder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-nez v2, :cond_2

    .line 904
    :cond_0
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    if-nez v2, :cond_4

    .line 910
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "camera has destory in surfaceCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :cond_1
    :goto_0
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 934
    return-void

    .line 885
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    if-nez v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 890
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-nez v2, :cond_3

    .line 897
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 898
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->setPreviewCallback()V

    .line 899
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 917
    .local v0, "-l_2_R":Ljava/lang/Object;
    :try_start_2
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "Exception in surfaceCreated()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 922
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 919
    return-void

    .line 892
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_3
    :try_start_3
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "before stop preview"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 894
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 895
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "before set preview buf null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 922
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 906
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_4
    :try_start_4
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "now is starting preview, can\'t repeat start preview!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "surfaceDestroyed! surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " holder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method
