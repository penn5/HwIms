.class public Lcom/huawei/videoengine/SurfaceEncoder;
.super Ljava/lang/Object;
.source "SurfaceEncoder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private _encSf:Landroid/view/Surface;

.field private mNILock:Ljava/lang/Object;

.field private mNativeEncClass:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, "SurfaceEncoder"

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->TAG:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNILock:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->_encSf:Landroid/view/Surface;

    .line 14
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, "SurfaceEncoder"

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->TAG:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNILock:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->_encSf:Landroid/view/Surface;

    .line 19
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SurfaceEncoder in 123"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-wide p1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNativeEncClass:J

    .line 23
    return-void
.end method


# virtual methods
.method public freeEncSurface()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 32
    iget-object v1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->_encSf:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 35
    :cond_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_1
    iget-object v1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " freeEncSurface() _encSf is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/videoengine/SurfaceEncoder;->_encSf:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->_encSf:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 42
    iput-object v4, p0, Lcom/huawei/videoengine/SurfaceEncoder;->_encSf:Landroid/view/Surface;

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method native nProvideOutBuffer(Ljava/nio/ByteBuffer;IIJ)V
.end method

.method public provideOutBuffer(Ljava/nio/ByteBuffer;II)V
    .locals 8

    .prologue
    .line 64
    iget-object v6, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNILock:Ljava/lang/Object;

    .local v6, "-l_4_R":Ljava/lang/Object;
    monitor-enter v6

    .line 65
    :try_start_0
    iget-wide v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNativeEncClass:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 66
    iget-wide v4, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNativeEncClass:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/videoengine/SurfaceEncoder;->nProvideOutBuffer(Ljava/nio/ByteBuffer;IIJ)V

    .line 68
    :cond_0
    monitor-exit v6

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v7

    .local v7, "-l_5_R":Ljava/lang/Object;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public setEncSurface(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->_encSf:Landroid/view/Surface;

    .line 28
    return-void
.end method

.method public setNativeInstanceNull()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNILock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 48
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNativeEncClass:J

    .line 49
    monitor-exit v0

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
