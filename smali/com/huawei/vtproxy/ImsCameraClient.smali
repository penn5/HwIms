.class public Lcom/huawei/vtproxy/ImsCameraClient;
.super Ljava/lang/Object;
.source "ImsCameraClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;
    }
.end annotation


# static fields
.field public static final CAAS_CAMERA_ID_BACK:I = 0x0

.field public static final CAAS_CAMERA_ID_FRONT:I = 0x1

.field public static final CAMERA_CLIENT_FAILED:I = 0x1

.field public static final CAMERA_CLIENT_OK:I = 0x0

.field public static final CHR_VT_ERROR_CAMERA_INIT:I = 0x1

.field public static final CHR_VT_ERROR_CAMERA_NORMAL:I = 0x0

.field public static final CHR_VT_ERROR_CAMERA_OCCUPIED:I = 0x4

.field public static final CHR_VT_ERROR_CAMERA_OPEN:I = 0x3

.field public static final CHR_VT_ERROR_CAMERA_PARA:I = 0x2

.field public static final CHR_VT_ERROR_IPADDR_NORMAL:I = 0x0

.field public static final CHR_VT_ERROR_IPADDR_NULL:I = 0x1

.field public static final CHR_VT_ERROR_MOUDLE_NULL:I = 0x0

.field public static final CHR_VT_ERROR_MOUDLE_VT:I = 0x1

.field public static final CHR_VT_ERROR_SOCKET_ACCEPT:I = 0x5

.field public static final CHR_VT_ERROR_SOCKET_BIND:I = 0x3

.field public static final CHR_VT_ERROR_SOCKET_CONNECT:I = 0x6

.field public static final CHR_VT_ERROR_SOCKET_LISTEN:I = 0x4

.field public static final CHR_VT_ERROR_SOCKET_NORMAL:I = 0x0

.field public static final CHR_VT_ERROR_SOCKET_OPEN:I = 0x1

.field public static final CHR_VT_ERROR_SOCKET_SELECT:I = 0x2

.field private static final HME_V_CAMERA_TYPE:I = 0x0

.field private static final HME_V_ENCODER_USE_TYPE:I = 0x1

.field private static chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

.field private static hmeLogPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 76
    const-string/jumbo v0, "/storage/emulated/0/Android/data/com.huawei.ims/files"

    sput-object v0, Lcom/huawei/vtproxy/ImsCameraClient;->hmeLogPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static cameraOpen(II)I
    .locals 4
    .param p0, "cameraid"    # I
    .param p1, "callType"    # I

    .prologue
    const/4 v3, 0x0

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "isWriteLog":Z
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/huawei/vtproxy/ImsCameraClient;->hmeLogPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "path":Ljava/io/File;
    const-string/jumbo v2, "persist.sys.huawei.debug.on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initImsThinClient isWriteLog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VTPROXY"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v0, :cond_0

    .line 123
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setHmeLog(Z)V

    .line 124
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->deleteHmeLogPath(Ljava/io/File;)Z

    .line 126
    :goto_0
    invoke-static {p0, p1}, Lcom/huawei/vtproxy/ImsCameraClient;->open(II)I

    move-result v2

    return v2

    .line 119
    :cond_0
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setHmeLog(Z)V

    goto :goto_0
.end method

.method public static cameraRelease(I)I
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 130
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsCameraClient;->release(I)I

    move-result v0

    return v0
.end method

.method public static getCameraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "paramKey"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native getChrVtCameraErr()I
.end method

.method private static native getChrVtIpAddrErr()I
.end method

.method private static native getChrVtSocketErr()I
.end method

.method private static native open(II)I
.end method

.method private static native release(I)I
.end method

.method public static setCameraParameter(ILjava/lang/Object;)I
    .locals 5
    .param p0, "paramKey"    # I
    .param p1, "paramValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "sValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 164
    .local v0, "iValue":Ljava/lang/Integer;
    packed-switch p0, :pswitch_data_0

    .line 179
    const-string/jumbo v2, "VTPROXY"

    const-string/jumbo v3, "###############setCameraParameter invalid key. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v4

    .line 168
    :pswitch_0
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    return v4

    :cond_0
    move-object v0, p1

    .line 170
    check-cast v0, Ljava/lang/Integer;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {p0, v1}, Lcom/huawei/vtproxy/ImsCameraClient;->setParameter(ILjava/lang/String;)I

    move-result v2

    return v2

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setChrVtCallBack(Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;)V
    .locals 2
    .param p0, "callBack"    # Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .prologue
    .line 79
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "setChrVtCallBack in func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput-object p0, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 81
    return-void
.end method

.method private static native setLocalView(Ljava/lang/Object;)I
.end method

.method public static setNearEndSurface(Landroid/view/Surface;)I
    .locals 2
    .param p0, "localSurface"    # Landroid/view/Surface;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "###############surface is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsCameraClient;->setLocalView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setNearEndSurface(Landroid/view/SurfaceView;)I
    .locals 2
    .param p0, "localView"    # Landroid/view/SurfaceView;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "###############surfaceview is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "###############surface is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsCameraClient;->setLocalView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static native setParameter(ILjava/lang/String;)I
.end method

.method public static setPreviewDisplayOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public static startCameraPreview()I
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->startPreview()I

    move-result v0

    return v0
.end method

.method public static startChrVtErrReport(I)V
    .locals 11
    .param p0, "ConditionId"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    const-string/jumbo v4, "VTPROXY"

    const-string/jumbo v5, "startChrVtErrReport in func"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtSocketErr()I

    move-result v3

    .line 87
    .local v3, "socketErrReason":I
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtIpAddrErr()I

    move-result v2

    .line 88
    .local v2, "ipAddrErrReason":I
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtCameraErr()I

    move-result v0

    .line 89
    .local v0, "cameraErrReason":I
    const/4 v4, 0x5

    new-array v1, v4, [I

    aput v6, v1, v6

    aput v6, v1, v7

    aput v6, v1, v8

    aput v6, v1, v9

    aput v6, v1, v10

    .line 91
    .local v1, "intData":[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startChrVtErrReport ConditionId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", socketErrReason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ipAddrErrReason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cameraErrReason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "VTPROXY"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    aput p0, v1, v6

    .line 94
    div-int/lit16 v4, v3, 0x3e8

    aput v4, v1, v7

    .line 95
    rem-int/lit16 v4, v3, 0x3e8

    aput v4, v1, v8

    .line 96
    aput v2, v1, v9

    .line 97
    aput v0, v1, v10

    .line 99
    sget-object v4, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    if-nez v4, :cond_0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string/jumbo v4, "VTPROXY"

    const-string/jumbo v5, "startChrVtErrReport run call back func"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v4, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;->chrVtCbGetErrReport([I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native startPreview()I
.end method

.method public static stopCameraPreview()I
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->stopPreview()I

    move-result v0

    return v0
.end method

.method private static native stopPreview()I
.end method

.method private static native switchCamera()I
.end method

.method public static switchCameras()I
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->switchCamera()I

    move-result v0

    return v0
.end method
