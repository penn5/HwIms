.class Lcom/huawei/videoengine/VideoCapture2Android$2;
.super Landroid/media/MediaCodec$Callback;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;-><init>(J)V
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
    .line 202
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaCodec onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .prologue
    .line 214
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 216
    .local v0, "-l_4_R":Ljava/lang/Object;
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$700(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "-l_5_R":Ljava/lang/Object;
    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/SurfaceEncoder;

    move-result-object v3

    if-nez v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$908(Lcom/huawei/videoengine/VideoCapture2Android;)I

    .line 222
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 229
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 231
    return-void

    .line 219
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/SurfaceEncoder;

    move-result-object v3

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/huawei/videoengine/SurfaceEncoder;->provideOutBuffer(Ljava/nio/ByteBuffer;II)V

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v2

    .local v2, "-l_6_R":Ljava/lang/Object;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 223
    .end local v2    # "-l_6_R":Ljava/lang/Object;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " java Mediacodec, have no frame Reciver, frame count("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    const-string/jumbo v5, "hme_engine_java"

    .line 225
    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOutputFormatChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method
