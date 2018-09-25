.class public Lcom/huawei/videoengine/H264Decoder;
.super Ljava/lang/Object;
.source "H264Decoder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private dataLength:I

.field private decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private h264Decoder:Landroid/media/MediaCodec;

.field private inited:Z

.field private isKeyFrame:I

.field private lnativeObject:J

.field private mediaFormat:Landroid/media/MediaFormat;

.field private needKeyFrame:Z

.field private playBuffer:Ljava/nio/ByteBuffer;

.field private renderTime:J

.field private started:Z

.field private surfaceView:Landroid/view/SurfaceView;

.field private tempBufPlay:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->surfaceView:Landroid/view/SurfaceView;

    .line 14
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    .line 15
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 17
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 22
    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z

    .line 23
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    .line 24
    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    .line 25
    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    return-void
.end method

.method private native setDecodedSize(JII)V
.end method

.method private start(Landroid/view/SurfaceHolder;)I
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 275
    const-string/jumbo v4, "H264JavaDecoder"

    const-string/jumbo v5, "start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    :try_start_0
    iget-boolean v4, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 285
    :try_start_1
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    .line 286
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/huawei/videoengine/H264Decoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    .line 302
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 306
    return v9

    .line 280
    :cond_0
    :try_start_4
    const-string/jumbo v4, "H264JavaDecoder"

    const-string/jumbo v5, " decoder is allready started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    const/4 v0, 0x0

    .line 304
    .local v0, "-l_2_I":I
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    return v9

    .line 287
    .end local v0    # "-l_2_I":I
    :catch_0
    move-exception v1

    .line 288
    .local v1, "-l_2_R":Ljava/lang/Object;
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Configure : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "H264JavaDecoder"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 290
    const/4 v2, -0x1

    .line 304
    .local v2, "-l_3_I":I
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    return v10

    .line 295
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    .end local v2    # "-l_3_I":I
    :catch_1
    move-exception v1

    .line 296
    .restart local v1    # "-l_2_R":Ljava/lang/Object;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "H264JavaDecoder"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 298
    const/4 v2, -0x1

    .line 304
    .restart local v2    # "-l_3_I":I
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    return v10

    .line 304
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    .end local v2    # "-l_3_I":I
    :catchall_0
    move-exception v3

    .local v3, "-l_4_R":Ljava/lang/Object;
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private stop()V
    .locals 4

    .prologue
    .line 310
    const-string/jumbo v2, "H264JavaDecoder"

    const-string/jumbo v3, "stop"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 319
    :try_start_1
    const-string/jumbo v2, "H264JavaDecoder"

    const-string/jumbo v3, "h264Decoder stop1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v2, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 324
    :goto_0
    const-string/jumbo v2, "H264JavaDecoder"

    const-string/jumbo v3, "h264Decoder stop2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    .line 332
    const-string/jumbo v2, "H264JavaDecoder"

    const-string/jumbo v3, "h264Decoder stop3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    return-void

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    return-void

    .line 321
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 322
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, "-l_1_R":Ljava/lang/Object;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "H264JavaDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 334
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public config(Landroid/view/SurfaceView;II)I
    .locals 5

    .prologue
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "config width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "H264JavaDecoder"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 96
    .local v0, "-l_4_R":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v3, "H264JavaDecoder"

    const-string/jumbo v4, "before createVideoFormat"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->surfaceView:Landroid/view/SurfaceView;

    .line 103
    const-string/jumbo v3, "video/avc"

    invoke-static {v3, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 106
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "-l_5_I":I
    iget-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    :try_start_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 117
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 119
    const-string/jumbo v3, "H264JavaDecoder"

    const-string/jumbo v4, "config end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v1

    .line 98
    .end local v1    # "-l_5_I":I
    :cond_1
    const-string/jumbo v3, "H264JavaDecoder"

    const-string/jumbo v4, "H264Decoder config failed holder = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v3, -0x1

    return v3

    .line 111
    .restart local v1    # "-l_5_I":I
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/huawei/videoengine/H264Decoder;->start(Landroid/view/SurfaceHolder;)I

    move-result v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    const-string/jumbo v3, "H264JavaDecoder"

    const-string/jumbo v4, "start failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v2

    .local v2, "-l_6_R":Ljava/lang/Object;
    iget-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public deRegisterNativeObject()V
    .locals 2

    .prologue
    .line 343
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    .line 344
    return-void
.end method

.method public init()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 35
    const-string/jumbo v1, "H264JavaDecoder"

    const-string/jumbo v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    if-nez v1, :cond_0

    .line 41
    const/high16 v1, 0x200000

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/high16 v1, 0x200000

    :try_start_1
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    .line 58
    return v3

    .line 38
    :cond_0
    return v3

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "-l_1_R":Ljava/lang/Object;
    const-string/jumbo v1, "H264JavaDecoder"

    const-string/jumbo v2, "H264Decoder failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object v5, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 45
    return v4

    .line 50
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 51
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    const-string/jumbo v1, "H264JavaDecoder"

    const-string/jumbo v2, "tempBufPlay failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object v5, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    .line 53
    return v4
.end method

.method public onDecodeAndRander()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 137
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_0
    iget-boolean v7, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    if-eqz v7, :cond_1

    .line 145
    iget-boolean v7, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    .line 155
    :cond_0
    :try_start_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 158
    .local v1, "-l_1_R":Ljava/lang/Object;
    :goto_0
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v1, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 160
    .local v2, "-l_2_I":I
    if-ltz v2, :cond_3

    .line 178
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    .end local v2    # "-l_2_I":I
    :catch_0
    move-exception v1

    .line 183
    .restart local v1    # "-l_1_R":Ljava/lang/Object;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "decodeAndrander : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "H264JavaDecoder"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :goto_1
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 188
    return v10

    .line 142
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .line 186
    .local v0, "-l_1_I":I
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    return v10

    .line 147
    .end local v0    # "-l_1_I":I
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/huawei/videoengine/H264Decoder;->init()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    const/4 v0, -0x1

    .line 186
    .restart local v0    # "-l_1_I":I
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    const/4 v7, -0x1

    return v7

    .line 162
    .end local v0    # "-l_1_I":I
    .restart local v1    # "-l_1_R":Ljava/lang/Object;
    .restart local v2    # "-l_2_I":I
    :cond_3
    const/4 v7, -0x2

    if-eq v2, v7, :cond_4

    .line 172
    const/4 v7, -0x3

    goto :goto_1

    .line 164
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 165
    .local v3, "-l_3_R":Ljava/lang/Object;
    const-string/jumbo v7, "width"

    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 166
    .local v4, "-l_4_I":I
    const-string/jumbo v7, "height"

    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 167
    .local v5, "-l_5_I":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dec resolution change to: width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "H264JavaDecoder"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-wide v8, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    invoke-direct {p0, v8, v9, v4, v5}, Lcom/huawei/videoengine/H264Decoder;->setDecodedSize(JII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 186
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    .end local v2    # "-l_2_I":I
    .end local v3    # "-l_3_R":Ljava/lang/Object;
    .end local v4    # "-l_4_I":I
    .end local v5    # "-l_5_I":I
    :catchall_0
    move-exception v6

    .local v6, "-l_6_R":Ljava/lang/Object;
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public onFrame()I
    .locals 18

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 194
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    if-eqz v2, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    .line 208
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    if-eqz v2, :cond_4

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :try_start_1
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 225
    .local v10, "-l_1_R":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v10, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11

    .line 227
    .local v11, "-l_2_I":I
    if-ltz v11, :cond_5

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const/4 v4, 0x1

    invoke-virtual {v2, v11, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 257
    .end local v10    # "-l_1_R":Ljava/lang/Object;
    .end local v11    # "-l_2_I":I
    :catch_0
    move-exception v10

    .line 258
    .restart local v10    # "-l_1_R":Ljava/lang/Object;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFrame : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "H264JavaDecoder"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 263
    const/4 v2, 0x0

    return v2

    .line 196
    .end local v10    # "-l_1_R":Ljava/lang/Object;
    :cond_1
    const/4 v9, 0x0

    .line 261
    .local v9, "-l_1_I":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 196
    const/4 v2, 0x0

    return v2

    .line 200
    .end local v9    # "-l_1_I":I
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huawei/videoengine/H264Decoder;->isKeyFrame:I

    if-eqz v2, :cond_3

    .line 205
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v17

    .local v17, "-l_6_R":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v17

    .line 201
    .end local v17    # "-l_6_R":Ljava/lang/Object;
    :cond_3
    :try_start_4
    const-string/jumbo v2, "H264JavaDecoder"

    const-string/jumbo v4, "request i, but not"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    const/16 v9, -0x64

    .line 261
    .restart local v9    # "-l_1_I":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    const/16 v2, -0x64

    return v2

    .line 210
    .end local v9    # "-l_1_I":I
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/videoengine/H264Decoder;->init()I

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const-string/jumbo v2, "H264JavaDecoder"

    const-string/jumbo v4, "inited failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    const/4 v9, 0x0

    .line 261
    .restart local v9    # "-l_1_I":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    const/4 v2, 0x0

    return v2

    .line 228
    .end local v9    # "-l_1_I":I
    .restart local v10    # "-l_1_R":Ljava/lang/Object;
    .restart local v11    # "-l_2_I":I
    :cond_5
    const/4 v2, -0x2

    if-eq v11, v2, :cond_6

    .line 242
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 243
    .local v12, "-l_2_R":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 244
    .local v3, "-l_3_I":I
    if-gez v3, :cond_7

    .line 251
    const-string/jumbo v2, "H264JavaDecoder"

    const-string/jumbo v4, "inputBufferIndex < 0"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 254
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 255
    const/16 v14, -0x64

    .line 261
    .local v14, "-l_4_I":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    const/16 v2, -0x64

    return v2

    .line 229
    .end local v3    # "-l_3_I":I
    .end local v12    # "-l_2_R":Ljava/lang/Object;
    .end local v14    # "-l_4_I":I
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v13

    .line 231
    .local v13, "-l_3_R":Ljava/lang/Object;
    const-string/jumbo v2, "width"

    invoke-virtual {v13, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    .line 232
    .restart local v14    # "-l_4_I":I
    const-string/jumbo v2, "height"

    invoke-virtual {v13, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v16

    .line 233
    .local v16, "-l_5_I":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dec resolution change to: width "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " height "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "H264JavaDecoder"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v5, v14, v1}, Lcom/huawei/videoengine/H264Decoder;->setDecodedSize(JII)V

    goto :goto_3

    .line 245
    .end local v13    # "-l_3_R":Ljava/lang/Object;
    .end local v14    # "-l_4_I":I
    .end local v16    # "-l_5_I":I
    .restart local v3    # "-l_3_I":I
    .restart local v12    # "-l_2_R":Ljava/lang/Object;
    :cond_7
    aget-object v15, v12, v3

    .line 246
    .local v15, "-l_4_R":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/huawei/videoengine/H264Decoder;->renderTime:J

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method public registerNativeObject(J)V
    .locals 1

    .prologue
    .line 339
    iput-wide p1, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    .line 340
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 267
    const-string/jumbo v0, "H264JavaDecoder"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/huawei/videoengine/H264Decoder;->stop()V

    .line 270
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 271
    return-void
.end method

.method public setFrameInfo(IJI)V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 126
    :try_start_0
    iput p1, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    .line 127
    iput-wide p2, p0, Lcom/huawei/videoengine/H264Decoder;->renderTime:J

    .line 128
    iput p4, p0, Lcom/huawei/videoengine/H264Decoder;->isKeyFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    .local v0, "-l_5_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .prologue
    .line 64
    const-string/jumbo v1, "H264JavaDecoder"

    const-string/jumbo v2, "Enter surfaceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/H264Decoder;->start(Landroid/view/SurfaceHolder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    return-void

    .line 69
    :cond_0
    :try_start_1
    const-string/jumbo v1, "H264JavaDecoder"

    const-string/jumbo v2, "surfaceCreated start failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .local v0, "-l_5_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "H264JavaDecoder"

    const-string/jumbo v1, "Enter surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 83
    const-string/jumbo v1, "H264JavaDecoder"

    const-string/jumbo v2, "Enter surfaceDestroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/videoengine/H264Decoder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .local v0, "-l_2_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
