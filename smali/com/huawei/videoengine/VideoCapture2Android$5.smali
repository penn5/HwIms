.class Lcom/huawei/videoengine/VideoCapture2Android$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;->createCaptureSession()V
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
    .line 375
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$5;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .prologue
    .line 386
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "#step#capture session onConfigureFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .prologue
    .line 379
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "#step#capture session onConfigured"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$5;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1602(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 381
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$5;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$5;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1100(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 382
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 393
    return-void
.end method
