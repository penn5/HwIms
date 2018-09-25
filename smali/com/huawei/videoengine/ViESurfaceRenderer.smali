.class public Lcom/huawei/videoengine/ViESurfaceRenderer;
.super Ljava/lang/Object;
.source "ViESurfaceRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final displayBorder:I = 0x0

.field private static final displayClipping:I = 0x1

.field private static final displayNone:I = 0x2

.field private static final manufaturer:Ljava/lang/String;

.field private static surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private creatNativeFlag:Z

.field private dataHeight:I

.field private dataWidth:I

.field private displayType:I

.field private dstBottomScale:F

.field private dstHeight:I

.field private dstLeftScale:F

.field private dstRect:Landroid/graphics/Rect;

.field private dstRightScale:F

.field private dstTopScale:F

.field private dstWidth:I

.field private lnativeObject:J

.field private remoteSurface:Landroid/view/Surface;

.field private srcRect:Landroid/graphics/Rect;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 36
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    .line 38
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    .line 43
    const/4 v2, 0x2

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    .line 44
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 45
    iput v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    .line 46
    iput v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    .line 48
    iput v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 49
    iput v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 50
    iput v5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    .line 51
    iput v6, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    .line 52
    iput v5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    .line 53
    iput v6, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    .line 54
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 55
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    .line 58
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "enter ViESurfaceRenderer !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 61
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 65
    .local v0, "-l_2_R":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 76
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 77
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 78
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 80
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 82
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    const-string/jumbo v2, "hme-video"

    const-string/jumbo v3, "leave ViESurfaceRenderer !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 62
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_0
    return-void

    .line 66
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 67
    .local v1, "-l_3_R":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 72
    :goto_1
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 68
    :cond_2
    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    .line 69
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 70
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    goto :goto_1
.end method

.method private native setSurface(JLjava/lang/Object;)V
.end method


# virtual methods
.method public createBitmap(II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 180
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 182
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 183
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 184
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 186
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 172
    :cond_0
    const/4 v1, -0x4

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "-l_3_R":Ljava/lang/Object;
    const-string/jumbo v1, "Logerr"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 203
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 204
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 205
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 206
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 207
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 211
    iput p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    .line 212
    iput p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    .line 213
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurfaceViewDisplayParas()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_1
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v1

    .line 192
    :cond_0
    const/4 v1, -0x4

    .line 193
    :try_start_1
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "-l_3_R":Ljava/lang/Object;
    const-string/jumbo v1, "Logerr"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 218
    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "Failed to createByteBuffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 220
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public drawBitmap()V
    .locals 6

    .prologue
    .line 350
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 353
    sget-object v2, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 356
    .local v0, "-l_1_R":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 361
    :goto_0
    sget-object v2, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 363
    return-void

    .line 351
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_0
    return-void

    .line 357
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 358
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    sget-object v2, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drawBlack()V
    .locals 2

    .prologue
    .line 366
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 369
    .local v0, "-l_1_R":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 373
    :goto_0
    return-void

    .line 367
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_0
    return-void

    .line 370
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_1
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 371
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawByteBuffer()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 345
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 346
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBitmap()V

    .line 347
    return-void

    .line 343
    :cond_0
    return-void
.end method

.method public getRemoteSurface()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "VieSurfaceRenderer.java! getRemoteSurface!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    const-string/jumbo v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    if-nez v0, :cond_2

    .line 147
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "VieSurfaceRenderer.java! remoteSurface is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "VieSurfaceRenderer.java! set remote surface to native channel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurface(JLjava/lang/Object;)V

    .line 144
    iput-object v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    goto :goto_0

    .line 152
    :cond_3
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "VieSurfaceRenderer.java! getRemoteSurface but not registered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerNativeObject(J)V
    .locals 1

    .prologue
    .line 377
    iput-wide p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    .line 378
    return-void
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public setCoordinates(FFFFI)V
    .locals 3

    .prologue
    .line 325
    iput p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    .line 326
    iput p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    .line 327
    iput p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    .line 328
    iput p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    .line 330
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 331
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 332
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 333
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCoordinates + left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput p5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    .line 339
    return-void
.end method

.method public setSurfaceViewDisplayParas()V
    .locals 11

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurfaceViewDisplayParas + dataWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dataHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " displayType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurfaceViewDisplayParas + dstWidth/dstHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " width/height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    if-nez v0, :cond_1

    .line 235
    :cond_0
    return-void

    .line 232
    :cond_1
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    packed-switch v0, :pswitch_data_0

    .line 318
    :cond_2
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 251
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 252
    .local v8, "-l_2_F":F
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    div-float v0, v8, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v1, v0

    .line 253
    .local v6, "-l_1_F":F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createByteBuffer + ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tempDestWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dstWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v6, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v6, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v0

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setCoordinates(FFFFI)V

    .line 264
    .end local v6    # "-l_1_F":F
    .end local v8    # "-l_2_F":F
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    .line 265
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    .line 266
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    goto :goto_0

    .line 257
    :cond_4
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 259
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 260
    .local v10, "-l_3_F":F
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v0, v0

    div-float v0, v10, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v6, v1, v0

    .line 261
    .restart local v6    # "-l_1_F":F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createByteBuffer + ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tempDestHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dstHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, v6, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v6, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v0

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setCoordinates(FFFFI)V

    goto :goto_1

    .line 277
    .end local v6    # "-l_1_F":F
    .end local v10    # "-l_3_F":F
    :pswitch_1
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 280
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v9, v0

    .line 281
    .local v9, "-l_2_I":I
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 282
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 283
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 284
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v9

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createByteBuffer + top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    .end local v9    # "-l_2_I":I
    :cond_5
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 290
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v7, v0

    .line 291
    .local v7, "-l_1_I":I
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 292
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 293
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    sub-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 294
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v7

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createByteBuffer + left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    .end local v7    # "-l_1_I":I
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 306
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 307
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViESurfaceRenderer.java! surfaceChanged  width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " creatNativeFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 101
    iput p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 102
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 103
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 104
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 105
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 107
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "before setSurfaceViewDisplayParas"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurfaceViewDisplayParas()V

    .line 111
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "after setSurfaceViewDisplayParas"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VieSurfaceRenderer.java! enter surfaceCreated  this:"

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

    .line 118
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    const-string/jumbo v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 123
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "VieSurfaceRenderer.java! lnativeObject is registerd!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurface(JLjava/lang/Object;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    goto :goto_0

    .line 128
    :cond_2
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "VieSurfaceRenderer.java! not registered,save remote surface!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 158
    sget-object v1, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VieSurfaceRenderer.java! enter surfaceDestroyed this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme-video"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    sget-object v1, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception v0

    .local v0, "-l_2_R":Ljava/lang/Object;
    sget-object v1, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
