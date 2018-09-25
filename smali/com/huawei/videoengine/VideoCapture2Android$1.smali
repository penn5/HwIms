.class Lcom/huawei/videoengine/VideoCapture2Android$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCapture2Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/VideoCapture2Android;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 11

    .prologue
    .line 113
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, "-l_2_R":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 119
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 120
    .local v1, "-l_3_R":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 125
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/huawei/videoengine/VideoCapture2Android;->access$002(Lcom/huawei/videoengine/VideoCapture2Android;J)J

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_2

    .line 132
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    .line 133
    .local v2, "-l_4_R":Ljava/lang/Object;
    array-length v3, v2

    .line 134
    .local v3, "-l_5_I":I
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    array-length v8, v2

    invoke-static {v7, v8}, Lcom/huawei/videoengine/VideoCapture2Android;->access$102(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 135
    if-gtz v3, :cond_3

    .line 138
    :goto_0
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v7}, Lcom/huawei/videoengine/VideoCapture2Android;->access$300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v8, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v8}, Lcom/huawei/videoengine/VideoCapture2Android;->access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    div-int v4, v7, v8

    .line 139
    .local v4, "-l_6_I":I
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v7}, Lcom/huawei/videoengine/VideoCapture2Android;->access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v8, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v8}, Lcom/huawei/videoengine/VideoCapture2Android;->access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    div-int v5, v7, v8

    .line 140
    .local v5, "-l_7_I":I
    :goto_1
    if-gtz v3, :cond_4

    .line 148
    return-void

    .line 116
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    .end local v2    # "-l_4_R":Ljava/lang/Object;
    .end local v3    # "-l_5_I":I
    .end local v4    # "-l_6_I":I
    .end local v5    # "-l_7_I":I
    :cond_0
    const-string/jumbo v7, "hme_engine_java"

    const-string/jumbo v8, "#ROI# detect_mode is null !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 122
    .restart local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "hme_engine_java"

    const-string/jumbo v8, "#ROI# ts is null !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 128
    :cond_2
    const-string/jumbo v7, "hme_engine_java"

    const-string/jumbo v8, "#ROI# DETECT_MODE is OFF !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 136
    .restart local v2    # "-l_4_R":Ljava/lang/Object;
    .restart local v3    # "-l_5_I":I
    :cond_3
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    mul-int/lit8 v8, v3, 0x4

    new-array v8, v8, [I

    invoke-static {v7, v8}, Lcom/huawei/videoengine/VideoCapture2Android;->access$202(Lcom/huawei/videoengine/VideoCapture2Android;[I)[I

    goto :goto_0

    .line 141
    .restart local v4    # "-l_6_I":I
    .restart local v5    # "-l_7_I":I
    :cond_4
    array-length v7, v2

    sub-int v6, v7, v3

    .line 142
    .local v6, "-l_8_I":I
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v7}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v7

    mul-int/lit8 v8, v6, 0x4

    aget-object v9, v2, v6

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-int/2addr v9, v4

    aput v9, v7, v8

    .line 143
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v7}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v7

    mul-int/lit8 v8, v6, 0x4

    add-int/lit8 v8, v8, 0x1

    aget-object v9, v2, v6

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-int/2addr v9, v5

    aput v9, v7, v8

    .line 144
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v7}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v7

    mul-int/lit8 v8, v6, 0x4

    add-int/lit8 v8, v8, 0x2

    aget-object v9, v2, v6

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    aget-object v10, v2, v6

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v4

    aput v9, v7, v8

    .line 145
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v7}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v7

    mul-int/lit8 v8, v6, 0x4

    add-int/lit8 v8, v8, 0x3

    aget-object v9, v2, v6

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    aget-object v10, v2, v6

    invoke-virtual {v10}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v5

    aput v9, v7, v8

    .line 146
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p3}, Lcom/huawei/videoengine/VideoCapture2Android$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 155
    return-void
.end method
