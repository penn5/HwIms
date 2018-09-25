.class public Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;,
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;,
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static LOGLEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static VERBOSE:Z

.field private static final model:Ljava/lang/String;


# instance fields
.field private cameraOpen:Z

.field context:Landroid/content/Context;

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

.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    .line 32
    sput v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    .line 33
    sget v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    .line 34
    sget v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    if-gt v0, v2, :cond_1

    :goto_1
    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->DEBUG:Z

    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    :cond_1
    move v1, v2

    .line 34
    goto :goto_1
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    .line 88
    iput p1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    .line 89
    iput-object p2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 92
    return-void
.end method

.method private addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    .locals 23

    .prologue
    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v12

    .line 301
    .local v12, "-l_3_R":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v13

    .line 302
    .local v13, "-l_4_R":Ljava/lang/Object;
    if-nez v13, :cond_1

    .line 304
    :cond_0
    const-string/jumbo v20, "hme-video"

    const-string/jumbo v21, "framerate or sizes is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 302
    :cond_1
    if-eqz v12, :cond_0

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v14

    .line 311
    .local v14, "-l_5_R":Ljava/lang/Object;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 313
    .local v15, "-l_6_I":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    .line 315
    .local v16, "-l_7_I":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "addDeviceInfo: suport format num:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "  iMaxSizePerFormat:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v17, 0x0

    .line 319
    .local v17, "-l_8_I":I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "-l_9_R":Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 340
    if-gtz v15, :cond_6

    .line 405
    :cond_3
    :goto_1
    return-void

    .line 319
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 320
    .local v3, "-l_10_R":Ljava/lang/Object;
    sget-boolean v20, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    if-nez v20, :cond_5

    .line 324
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 325
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto :goto_0

    .line 321
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "VideoCaptureDeviceInfoAndroid:frameRate "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 342
    .end local v3    # "-l_10_R":Ljava/lang/Object;
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "addDeviceInfo!!model is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    mul-int v18, v16, v15

    .line 344
    .local v18, "-l_9_I":I
    const/4 v2, 0x0

    .line 345
    .local v2, "-l_10_I":I
    sget-object v20, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string/jumbo v21, "M310"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 354
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " addDeviceInfo capabilityNumber: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_3
    move/from16 v0, v18

    new-array v0, v0, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 359
    const/4 v4, 0x0

    .line 365
    .local v4, "-l_11_I":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "-l_16_R":Ljava/lang/Object;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 387
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " needToQueryDoubleStream: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v2, :cond_3

    .line 390
    const/4 v9, 0x0

    .line 391
    .local v9, "-l_16_I":I
    const-string/jumbo v20, "supported_stream"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 392
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v0, v9, :cond_a

    .line 399
    const-string/jumbo v20, "hme-video"

    const-string/jumbo v21, "M310 not support double stream, do nothing!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "supportDoubelStream: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " VRawType: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, -0x1

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    .end local v4    # "-l_11_I":I
    .end local v9    # "-l_16_I":I
    .end local v10    # "-l_16_R":Ljava/lang/Object;
    :cond_7
    const/4 v2, 0x1

    .line 350
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "M310(singlebox) addDeviceInfo capabilityNumber: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 365
    .restart local v4    # "-l_11_I":I
    .restart local v10    # "-l_16_R":Ljava/lang/Object;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 367
    .local v11, "-l_17_R":Ljava/lang/Object;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Add capture Device Info! suport format:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    mul-int v6, v16, v4

    .line 370
    .local v6, "-l_13_I":I
    add-int/lit8 v20, v4, 0x1

    mul-int v7, v16, v20

    .line 372
    .local v7, "-l_14_I":I
    move v5, v6

    .local v5, "-l_12_I":I
    :goto_6
    if-lt v5, v7, :cond_9

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 374
    :cond_9
    mul-int v20, v16, v4

    sub-int v20, v5, v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 376
    .local v8, "-l_15_R":Ljava/lang/Object;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "cur size("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-int v21, v5, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "):"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v8, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v8, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "hme-video"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    new-instance v21, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct/range {v21 .. v21}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v21, v20, v5

    .line 378
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    iget v0, v8, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 379
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    iget v0, v8, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 380
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 381
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    .line 372
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 393
    .end local v5    # "-l_12_I":I
    .end local v6    # "-l_13_I":I
    .end local v7    # "-l_14_I":I
    .end local v8    # "-l_15_R":Ljava/lang/Object;
    .end local v11    # "-l_17_R":Ljava/lang/Object;
    .restart local v9    # "-l_16_I":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    add-int/lit8 v21, v18, -0x1

    aget-object v20, v20, v21

    const/16 v21, 0x2d0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 394
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    add-int/lit8 v21, v18, -0x1

    aget-object v20, v20, v21

    const/16 v21, 0x500

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 395
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    add-int/lit8 v21, v18, -0x1

    aget-object v20, v20, v21

    const/16 v21, 0x1e

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 396
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    add-int/lit8 v21, v18, -0x1

    aget-object v20, v20, v21

    const/16 v21, 0x62

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    goto/16 :goto_5
.end method

.method private addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "-l_3_I":I
    iget-object v1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .local v1, "-l_4_R":Ljava/lang/Object;
    array-length v2, v1

    .local v2, "-l_5_I":I
    const/4 v3, 0x0

    .local v3, "-l_6_I":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 458
    :goto_1
    if-eqz v0, :cond_3

    .line 468
    :goto_2
    return-void

    .line 451
    :cond_0
    aget-object v4, v1, v3

    .line 452
    .local v4, "-l_7_R":Ljava/lang/Object;
    iget v5, v4, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget v6, p2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    if-eq v5, v6, :cond_2

    .line 451
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    :cond_2
    iget v5, v4, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    iget v6, p2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    if-ne v5, v6, :cond_1

    .line 454
    const/4 v0, 0x1

    goto :goto_1

    .line 459
    .end local v4    # "-l_7_R":Ljava/lang/Object;
    :cond_3
    iget-object v5, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 461
    const/4 v2, 0x0

    :goto_3
    iget-object v5, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v5, v5

    if-lt v2, v5, :cond_4

    .line 464
    aput-object p2, v1, v7

    .line 465
    iput-object v1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    goto :goto_2

    .line 462
    :cond_4
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v2

    aput-object v6, v1, v5

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private allocateHTCFrontCamera()Landroid/hardware/Camera;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 857
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "AllocateHTCFrontCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 67
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->DEBUG:Z

    if-nez v1, :cond_0

    .line 72
    :goto_0
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {v0, p0, p1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;-><init>(ILandroid/content/Context;)V

    .line 73
    .local v0, "-l_2_R":Ljava/lang/Object;
    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "Failed to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    return-object v1

    .line 68
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "hme-video"

    const-string/jumbo v4, "VideoCaptureDeviceInfoAndroid"

    .line 69
    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "Success to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0
.end method

.method private init()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "-l_1_R":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 123
    .local v1, "-l_2_I":I
    const/4 v2, 0x0

    .line 125
    .local v2, "-l_3_I":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 127
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-gt v5, v6, :cond_1

    .line 276
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 293
    return v8

    .line 130
    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 134
    :try_start_0
    new-instance v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    invoke-direct {v3}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>()V

    .line 136
    .local v3, "-l_4_R":Ljava/lang/Object;
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 137
    .local v4, "-l_5_R":Ljava/lang/Object;
    invoke-static {v1, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 138
    iput v1, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 140
    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v5, :cond_3

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Facing front, Orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 149
    sget-object v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v5, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "front Camera, orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "hme-video"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_2
    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v5, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 156
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    sget-object v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string/jumbo v6, "LG-P920"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 130
    .end local v4    # "-l_5_R":Ljava/lang/Object;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    .restart local v4    # "-l_5_R":Ljava/lang/Object;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Facing back, Orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "back Camera, orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "hme-video"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 164
    .end local v3    # "-l_4_R":Ljava/lang/Object;
    .end local v4    # "-l_5_R":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 166
    .restart local v3    # "-l_4_R":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to init VideoCaptureDeviceInfo ex::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "hme-video"

    .line 167
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 158
    .restart local v4    # "-l_5_R":Ljava/lang/Object;
    :cond_4
    const/4 v5, 0x2

    if-ne v5, v2, :cond_2

    .line 160
    :try_start_1
    const-string/jumbo v5, "hme-video"

    const-string/jumbo v6, "Not use the camera 2 of LG-P920"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 278
    .end local v3    # "-l_4_R":Ljava/lang/Object;
    .end local v4    # "-l_5_R":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v5, "hme-video"

    const-string/jumbo v6, "no valid Camera!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v8
.end method

.method private verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 7

    .prologue
    const/16 v6, 0xf

    .line 414
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v5, "GT-I9000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v5, "crespo"

    .line 415
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 437
    :goto_0
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v5, "motorola"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 445
    :cond_1
    return-void

    .line 414
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    .line 416
    :cond_3
    new-instance v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 418
    .local v0, "-l_2_R":Ljava/lang/Object;
    const/16 v4, 0x160

    iput v4, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 419
    const/16 v4, 0x120

    iput v4, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 420
    iput v6, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 421
    invoke-direct {p0, p1, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    .line 423
    new-instance v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .end local v0    # "-l_2_R":Ljava/lang/Object;
    invoke-direct {v0}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 424
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    const/16 v4, 0xb0

    iput v4, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 425
    const/16 v4, 0x90

    iput v4, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 426
    iput v6, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    .line 429
    new-instance v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .end local v0    # "-l_2_R":Ljava/lang/Object;
    invoke-direct {v0}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 430
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    const/16 v4, 0x140

    iput v4, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 431
    const/16 v4, 0xf0

    iput v4, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 432
    iput v6, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 433
    invoke-direct {p0, p1, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    goto :goto_0

    .line 437
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_4
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v5, "umts_sholes"

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    iget-object v0, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    array-length v1, v0

    .local v1, "-l_3_I":I
    const/4 v2, 0x0

    .local v2, "-l_4_I":I
    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 441
    .local v3, "-l_5_R":Ljava/lang/Object;
    iput v6, v3, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public allocateCamera(IJLjava/lang/String;)Lcom/huawei/videoengine/VideoCaptureAndroid;
    .locals 16

    .prologue
    .line 576
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AllocateCamera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v6, 0x0

    .line 579
    .local v6, "-l_5_R":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 580
    .local v7, "-l_6_R":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v7    # "-l_6_R":Ljava/lang/Object;
    .local v12, "-l_7_R":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 705
    if-eqz v6, :cond_9

    .line 708
    sget-boolean v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    if-nez v2, :cond_a

    .line 712
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    .line 713
    new-instance v2, Lcom/huawei/videoengine/VideoCaptureAndroid;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/VideoCaptureAndroid;-><init>(IJLandroid/hardware/Camera;Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V

    return-object v2

    .line 580
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 581
    .local v13, "-l_8_R":Ljava/lang/Object;
    iget-object v2, v13, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    move-object v7, v13

    .line 584
    .restart local v7    # "-l_6_R":Ljava/lang/Object;
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    iget-object v3, v13, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v3}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 636
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_4

    .line 699
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    goto :goto_0

    .line 587
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    :pswitch_0
    if-nez v6, :cond_2

    .line 592
    :goto_2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    .line 593
    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 597
    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    .line 598
    .local v14, "-l_9_R":Ljava/lang/Object;
    const-string/jumbo v2, "camera-id"

    const/4 v3, 0x2

    invoke-virtual {v14, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 599
    invoke-virtual {v6, v14}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 600
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x8

    if-gt v2, v3, :cond_3

    .line 606
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 607
    :catch_0
    move-exception v8

    .line 609
    .local v8, "-l_10_R":Ljava/lang/Object;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to verifyCapabilities ex::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 613
    const/4 v6, 0x0

    .line 615
    const/4 v2, 0x0

    return-object v2

    .line 589
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v8    # "-l_10_R":Ljava/lang/Object;
    .end local v14    # "-l_9_R":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 590
    const/4 v6, 0x0

    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    goto :goto_2

    .line 602
    .restart local v14    # "-l_9_R":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 715
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v7    # "-l_6_R":Ljava/lang/Object;
    .end local v12    # "-l_7_R":Ljava/lang/Object;
    .end local v13    # "-l_8_R":Ljava/lang/Object;
    .end local v14    # "-l_9_R":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 716
    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AllocateCamera Failed to open camera- ex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    .line 717
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v2, 0x0

    return-object v2

    .line 622
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .restart local v7    # "-l_6_R":Ljava/lang/Object;
    .restart local v12    # "-l_7_R":Ljava/lang/Object;
    .restart local v13    # "-l_8_R":Ljava/lang/Object;
    :pswitch_1
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->allocateHTCFrontCamera()Landroid/hardware/Camera;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    goto/16 :goto_0

    .line 623
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    :catch_2
    move-exception v8

    .line 625
    .restart local v8    # "-l_10_R":Ljava/lang/Object;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to verifyCapabilities ex::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 629
    const/4 v6, 0x0

    .line 631
    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    const/4 v2, 0x0

    return-object v2

    .line 638
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v8    # "-l_10_R":Ljava/lang/Object;
    :cond_4
    new-instance v8, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;

    iget v2, v13, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-direct {v8, v2}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;-><init>(I)V

    .line 639
    .restart local v8    # "-l_10_R":Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->start()V

    .line 640
    const/4 v9, 0x0

    .line 641
    .local v9, "-l_11_I":I
    :cond_5
    iget-object v2, v8, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_6

    .line 674
    iget-object v6, v8, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 683
    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 684
    .local v10, "-l_12_R":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 687
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 689
    :catch_3
    move-exception v11

    .line 691
    .local v11, "-l_13_R":Ljava/lang/Object;
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to VerifyCapabilities ex::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 693
    const/4 v6, 0x0

    .line 694
    const/4 v2, 0x0

    return-object v2

    .line 644
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v10    # "-l_12_R":Ljava/lang/Object;
    .end local v11    # "-l_13_R":Ljava/lang/Object;
    :cond_6
    const-wide/16 v2, 0x14

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 655
    add-int/lit8 v9, v9, 0x1

    .line 660
    const/16 v2, 0xc8

    if-le v9, v2, :cond_5

    .line 662
    :try_start_8
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "AllocateCamera Failed for open camera overtime!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v8}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->stop()V

    .line 664
    if-nez v6, :cond_8

    .line 669
    :goto_4
    const/4 v2, 0x0

    return-object v2

    .line 645
    :catch_4
    move-exception v10

    .line 647
    .restart local v10    # "-l_12_R":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to verifyCapabilities ex::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme-video"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-nez v6, :cond_7

    .line 653
    :goto_5
    const/4 v2, 0x0

    return-object v2

    .line 650
    :cond_7
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 651
    const/4 v6, 0x0

    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    goto :goto_5

    .line 666
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v10    # "-l_12_R":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 667
    const/4 v6, 0x0

    .restart local v6    # "-l_5_R":Ljava/lang/Object;
    goto :goto_4

    .line 706
    .end local v6    # "-l_5_R":Ljava/lang/Object;
    .end local v7    # "-l_6_R":Ljava/lang/Object;
    .end local v8    # "-l_10_R":Ljava/lang/Object;
    .end local v9    # "-l_11_I":I
    .end local v13    # "-l_8_R":Ljava/lang/Object;
    :cond_9
    const/4 v2, 0x0

    return-object v2

    .line 709
    :cond_a
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "AllocateCamera - creating VideoCaptureAndroid"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCapabilityArray(Ljava/lang/String;)[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 493
    new-array v0, v7, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 496
    .local v0, "-l_2_R":Ljava/lang/Object;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GetCapabilityArray "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "hme-video"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-boolean v7, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-eqz v7, :cond_1

    .line 501
    :goto_0
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 555
    return-object v0

    .line 498
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "hme-video"

    const-string/jumbo v8, "GetCapabilityArray camera is not Open"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    .line 551
    .restart local v1    # "-l_3_R":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GetCapabilityArray Failed to open camera- ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "hme-video"

    .line 552
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 551
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-object v0

    .line 501
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 503
    .local v2, "-l_4_R":Ljava/lang/Object;
    iget-object v7, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 505
    iget-object v7, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    if-eqz v7, :cond_3

    .line 545
    :goto_1
    iget-object v7, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    check-cast v7, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    return-object v7

    .line 507
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-gt v7, v8, :cond_4

    .line 542
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GetCapabilityArray Failed. SDK<=8,device.captureCapabilies == null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "hme-video"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 509
    :cond_4
    new-instance v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;

    iget v7, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-direct {v3, v7}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;-><init>(I)V

    .line 510
    .local v3, "-l_5_R":Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->start()V

    .line 511
    const/4 v4, 0x0

    .line 512
    .local v4, "-l_6_I":I
    :cond_5
    iget-object v7, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    if-eqz v7, :cond_6

    .line 526
    iget-object v5, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 535
    .local v5, "-l_7_R":Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 536
    .local v6, "-l_8_R":Ljava/lang/Object;
    invoke-direct {p0, v2, v6}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 537
    invoke-virtual {v5}, Landroid/hardware/Camera;->release()V

    goto :goto_1

    .line 514
    .end local v5    # "-l_7_R":Ljava/lang/Object;
    .end local v6    # "-l_8_R":Ljava/lang/Object;
    :cond_6
    const-wide/16 v8, 0x14

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 515
    add-int/lit8 v4, v4, 0x1

    .line 518
    const/16 v7, 0x64

    if-le v4, v7, :cond_5

    .line 520
    invoke-virtual {v3}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->stop()V

    .line 521
    const-string/jumbo v7, "hme-video"

    const-string/jumbo v8, "GetCapabilityArray Failed for open camera overtime!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 522
    return-object v0
.end method

.method public getDeviceUniqueName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-eqz v0, :cond_1

    .line 485
    :goto_0
    if-gez p1, :cond_2

    .line 486
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 481
    :cond_1
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "GetDeviceUniqueName camera is not Open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    goto :goto_0

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 561
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_2_R":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 569
    const/4 v2, -0x1

    return v2

    .line 561
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 562
    .local v1, "-l_3_R":Ljava/lang/Object;
    iget-object v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
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

    .line 566
    iget v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    return v2
.end method

.method public numberOfDevices()I
    .locals 2

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-eqz v0, :cond_0

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 473
    :cond_0
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "NumberOfDevices camera is not Open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    goto :goto_0
.end method

.method public reInit()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reInit!!model is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string/jumbo v1, "M310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " no need to refresh camera number!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v2

    .line 101
    :cond_0
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "M310(singlebox) reInit!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "M310(singlebox) support hot plug!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 109
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    move-result v0

    return v0
.end method
