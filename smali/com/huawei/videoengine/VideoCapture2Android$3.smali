.class Lcom/huawei/videoengine/VideoCapture2Android$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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
    .line 251
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "#step# CameraDevice onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 274
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1002(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 275
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 269
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 270
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1202(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    goto :goto_0
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#step#cameraDevice onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 281
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1002(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 282
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    .prologue
    .line 255
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "#step#CameraDevice onOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1002(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 257
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1100(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 258
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    goto :goto_0
.end method
