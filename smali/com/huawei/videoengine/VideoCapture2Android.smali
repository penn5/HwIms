.class public Lcom/huawei/videoengine/VideoCapture2Android;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;,
        Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;,
        Lcom/huawei/videoengine/VideoCapture2Android$TranObj;
    }
.end annotation


# static fields
.field private static final MSG_CAPTURE_SIZE:I = 0x1

.field private static final MSG_DESTROY:I = 0x4

.field private static final MSG_INIT_EGL:I = 0x0

.field private static final MSG_UPDATE_ENCSURFACE:I = 0x3

.field private static final MSG_UPDATE_PREVIEW:I = 0x2

.field private static final PREFIXSTEP:Ljava/lang/String; = "#step#"

.field private static final PREFIXWINSF:Ljava/lang/String; = "#winsf#"

.field private static final TAG:Ljava/lang/String; = "hme_engine_java"

.field private static final WAIT_TIME:J = 0xbb8L

.field private static final java_version:Ljava/lang/String; = "iMedia Video 8.0.ViLTE1.B015"

.field private static final mIsEncJava:Z


# instance fields
.field private bDestroyed:Z

.field private bUpdated:Z

.field private faces_length:I

.field private iROI:[I

.field private mArraySf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field private mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCapH:I

.field private mCapW:I

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCapturePreviewThread:Landroid/os/HandlerThread;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mDisplayProjectionMatrix:[F

.field private mDstCount:I

.field private mEglCore:Lcom/huawei/videoengine/EglCore;

.field private mEncHeight:I

.field private mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mEncSfJava:Landroid/view/Surface;

.field private mEncSfUpdateTmp:Landroid/view/Surface;

.field private mEncWidth:I

.field private mEncWinLock:Ljava/lang/Object;

.field private mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

.field private mIsFaceFront:Z

.field private mIsPreviewStart:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field mModelViewM:[F

.field private mNativeClassInstance:J

.field mNeedDropEncFrame:Z

.field private mNoSfECount:I

.field mPojectionM:[F

.field private mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mPreViewHeight:I

.field private mPreViewWidth:I

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mRecordSfJava:Landroid/view/Surface;

.field private mReq:Landroid/hardware/camera2/CaptureRequest;

.field private mRotEnc:I

.field private mRotLeft:I

.field private mRotPrieview:I

.field private mSfDst:[Landroid/view/Surface;

.field private mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

.field private mSfELock:Ljava/lang/Object;

.field private mSfPreview:Landroid/view/Surface;

.field private mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mTextureId:I

.field private mWinLock:Ljava/lang/Object;

.field private mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private manager:Landroid/hardware/camera2/CameraManager;

.field private objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field private objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field private objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field public result:Landroid/hardware/camera2/TotalCaptureResult;

.field private semInitEGL:Ljava/util/concurrent/Semaphore;

.field private time_stamp:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 49
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 56
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 57
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 59
    iput-boolean v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 63
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 64
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 107
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 109
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 250
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 251
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$3;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$3;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 287
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 288
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 501
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 502
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 504
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 506
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 507
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 508
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 509
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 510
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 511
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 512
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 513
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 514
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 576
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 615
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 616
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 704
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 705
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 706
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 835
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 907
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 908
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1076
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1077
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1174
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1190
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1191
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 98
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "#step#VideoCapture2Android()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 49
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 56
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 57
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 59
    iput-boolean v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 63
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 64
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 107
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 109
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 250
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 251
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$3;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$3;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 287
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 288
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 501
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 502
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 504
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 506
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 507
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 508
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 509
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 510
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 511
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 512
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 513
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 514
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 576
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 615
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 616
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 704
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 705
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 706
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 835
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 907
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 908
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1076
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1077
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1174
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1190
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1191
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 163
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 164
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "#step#VideoCapture2Android(inst), isEnc Java:false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "VideoCapture2Android.java! enter VideoCapture2Android! java version:iMedia Video 8.0.ViLTE1.B015"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-wide p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    .line 169
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 49
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 56
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 57
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 59
    iput-boolean v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 63
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 64
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 107
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 109
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 250
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 251
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$3;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$3;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 287
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 288
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 501
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 502
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 504
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 506
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 507
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 508
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 509
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 510
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 511
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 512
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 513
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 514
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 576
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 615
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 616
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 704
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 705
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 706
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 835
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 907
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 908
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1076
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1077
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1174
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1190
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1191
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 103
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/videoengine/VideoCapture2Android;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/huawei/videoengine/VideoCapture2Android;J)J
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I

    return v0
.end method

.method static synthetic access$1002(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$102(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I

    return p1
.end method

.method static synthetic access$1100(Lcom/huawei/videoengine/VideoCapture2Android;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;II)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->backUpdatePreViewSf(Landroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->backUpdateEncSf(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->backDestroy()V

    return-void
.end method

.method static synthetic access$1602(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/huawei/videoengine/VideoCapture2Android;[I)[I
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    return-object p1
.end method

.method static synthetic access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    return v0
.end method

.method static synthetic access$2302(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    return p1
.end method

.method static synthetic access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    return v0
.end method

.method static synthetic access$2402(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    return p1
.end method

.method static synthetic access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)[F
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    return-object v0
.end method

.method static synthetic access$2600(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    return v0
.end method

.method static synthetic access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p8}, Lcom/huawei/videoengine/VideoCapture2Android;->getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    return v0
.end method

.method static synthetic access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    return v0
.end method

.method static synthetic access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    return v0
.end method

.method static synthetic access$3502(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    return p1
.end method

.method static synthetic access$3600(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    return v0
.end method

.method static synthetic access$3602(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    return p1
.end method

.method static synthetic access$3700(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    return v0
.end method

.method static synthetic access$3800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    return v0
.end method

.method static synthetic access$402(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    return p1
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    return v0
.end method

.method static synthetic access$602(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    return p1
.end method

.method static synthetic access$700(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/SurfaceEncoder;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    return v0
.end method

.method static synthetic access$908(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    return v0
.end method

.method private backDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1142
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-nez v3, :cond_0

    .line 1146
    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 1147
    :try_start_0
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-nez v3, :cond_1

    .line 1152
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez v3, :cond_2

    .line 1160
    :goto_2
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-nez v3, :cond_3

    .line 1165
    :goto_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v0

    .line 1166
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1167
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 1168
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1169
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1171
    return-void

    .line 1143
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v3}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    goto :goto_0

    .line 1148
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_1
    :try_start_2
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "#winsf#mWinowSuface release"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v3}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1150
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    goto :goto_1

    .line 1152
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1156
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {v3, v6}, Lcom/huawei/videoengine/FullFrameRect;->release(Z)V

    .line 1157
    iput-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    goto :goto_2

    .line 1161
    :cond_3
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v3}, Lcom/huawei/videoengine/EglCore;->release()V

    .line 1162
    iput-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    goto :goto_3

    .line 1169
    :catchall_1
    move-exception v2

    .local v2, "-l_3_R":Ljava/lang/Object;
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private backUpdateEncSf(Landroid/view/Surface;)V
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-eqz v0, :cond_0

    .line 902
    :goto_0
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 903
    return-void

    .line 897
    :cond_0
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "wwmax mEncWindowSurface new program 655"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 899
    new-instance v0, Lcom/huawei/videoengine/FullFrameRect;

    new-instance v1, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object v2, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {v1, v2}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {v0, v1}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 900
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {v0}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    goto :goto_0
.end method

.method private backUpdatePreViewSf(Landroid/view/Surface;II)V
    .locals 7

    .prologue
    .line 937
    const/4 v0, 0x0

    .line 939
    .local v0, "-l_4_I":I
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v4, :cond_0

    .line 944
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .local v1, "-l_5_R":Ljava/lang/Object;
    monitor-enter v1

    .line 945
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopPreview()I

    .line 946
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-nez v4, :cond_1

    .line 961
    :goto_0
    new-instance v4, Lcom/huawei/videoengine/WindowSurface;

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v6, 0x0

    invoke-direct {v4, v5, p1, v6}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 962
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "#winsf#update new mWindowSurface:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme_engine_java"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 964
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 965
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startPreview()I

    .line 967
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v4}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 968
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-eqz v4, :cond_4

    .line 973
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    :goto_2
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .restart local v1    # "-l_5_R":Ljava/lang/Object;
    monitor-enter v1

    .line 978
    :try_start_1
    iget-boolean v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    if-eqz v4, :cond_5

    .line 984
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 985
    return-void

    .line 940
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v4, "hme_engine_java"

    const-string/jumbo v5, "egl has not init, return"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v0, -0x1

    goto :goto_2

    .line 947
    .restart local v1    # "-l_5_R":Ljava/lang/Object;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v4}, Lcom/huawei/videoengine/WindowSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    if-eq v4, p1, :cond_2

    .line 952
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v4}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v4

    if-nez v4, :cond_3

    .line 956
    :goto_4
    const-string/jumbo v4, "hme_engine_java"

    const-string/jumbo v5, "#winsf#mWinowSurface realease"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v4}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 958
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    goto :goto_0

    .line 973
    :catchall_0
    move-exception v2

    .local v2, "-l_6_R":Ljava/lang/Object;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 948
    .end local v2    # "-l_6_R":Ljava/lang/Object;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "local same as before,surface:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v5}, Lcom/huawei/videoengine/WindowSurface;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", update:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "hme_engine_java"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startPreview()I

    .line 950
    monitor-exit v1

    goto :goto_2

    .line 953
    :cond_3
    const-string/jumbo v4, "hme_engine_java"

    const-string/jumbo v5, "#winsf#mWindowSurface makeNothingCurrent "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v4}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    goto :goto_4

    .line 969
    :cond_4
    new-instance v4, Lcom/huawei/videoengine/FullFrameRect;

    new-instance v5, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object v6, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {v5, v6}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {v4, v5}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 970
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {v4}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result v4

    iput v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 971
    iget v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, v4}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 980
    :cond_5
    const/4 v4, 0x1

    :try_start_4
    iput-boolean v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 981
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v4, v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 982
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 984
    :catchall_1
    move-exception v3

    .local v3, "-l_7_R":Ljava/lang/Object;
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method private createSurfaceTexureForCamera(I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 709
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 714
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 715
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    iget v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 717
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$7;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/VideoCapture2Android$7;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 824
    return v3

    .line 710
    :cond_0
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "cameraTexure is already exist, no need to create"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return v3
.end method

.method private getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    .locals 12

    .prologue
    .line 1215
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p8

    int-to-float v7, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v2, p2

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1216
    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1218
    move/from16 v0, p7

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move/from16 v0, p8

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p3, v4, v2, v3, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1219
    move/from16 v0, p5

    int-to-float v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1222
    const/16 v2, 0x5a

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    .line 1224
    :cond_0
    move/from16 v0, p8

    int-to-float v2, v0

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 1225
    .local v11, "-l_9_F":F
    move/from16 v0, p7

    int-to-float v2, v0

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 1232
    .local v10, "-l_10_F":F
    :goto_0
    sget-object v2, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-object/from16 v0, p6

    if-eq v0, v2, :cond_2

    .line 1258
    sget-object v2, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-object/from16 v0, p6

    if-eq v0, v2, :cond_f

    .line 1265
    move/from16 v0, p8

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    const/4 v4, 0x0

    if-nez p4, :cond_13

    move/from16 v0, p7

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1268
    :goto_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1270
    return-void

    .line 1222
    .end local v10    # "-l_10_F":F
    .end local v11    # "-l_9_F":F
    :cond_1
    const/16 v2, 0x10e

    move/from16 v0, p5

    if-eq v0, v2, :cond_0

    .line 1229
    move/from16 v0, p8

    int-to-float v2, v0

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 1230
    .restart local v11    # "-l_9_F":F
    move/from16 v0, p7

    int-to-float v2, v0

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    div-float v10, v2, v3

    .restart local v10    # "-l_10_F":F
    goto :goto_0

    .line 1233
    :cond_2
    const/16 v2, 0x5a

    move/from16 v0, p5

    if-ne v0, v2, :cond_4

    .line 1234
    :cond_3
    move/from16 v0, p8

    move/from16 v1, p7

    if-gt v0, v1, :cond_5

    .line 1242
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v10, v2

    const/4 v4, 0x0

    if-nez p4, :cond_9

    move/from16 v0, p7

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_2

    .line 1233
    :cond_4
    const/16 v2, 0x10e

    move/from16 v0, p5

    if-eq v0, v2, :cond_3

    .line 1246
    move/from16 v0, p8

    move/from16 v1, p7

    if-gt v0, v1, :cond_a

    .line 1250
    move/from16 v0, p7

    int-to-float v2, v0

    move/from16 v0, p8

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 1251
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v11, v2

    const/4 v4, 0x0

    if-nez p4, :cond_c

    move/from16 v0, p8

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :goto_4
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_2

    .line 1235
    :cond_5
    move/from16 v0, p8

    int-to-float v2, v0

    move/from16 v0, p7

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 1236
    move/from16 v0, p8

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    const/4 v4, 0x0

    if-nez p4, :cond_6

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    :goto_5
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_2

    :cond_6
    neg-float v2, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto :goto_5

    .line 1239
    :cond_7
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v10, v2

    const/4 v4, 0x0

    if-nez p4, :cond_8

    move/from16 v0, p7

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :goto_6
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_2

    :cond_8
    move/from16 v0, p7

    int-to-float v2, v0

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto :goto_6

    .line 1242
    :cond_9
    move/from16 v0, p7

    int-to-float v2, v0

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto/16 :goto_3

    .line 1247
    :cond_a
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v11, v2

    const/4 v4, 0x0

    if-nez p4, :cond_b

    move/from16 v0, p8

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :goto_7
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_2

    :cond_b
    move/from16 v0, p8

    int-to-float v2, v0

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto :goto_7

    .line 1251
    :cond_c
    move/from16 v0, p8

    int-to-float v2, v0

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto :goto_4

    .line 1254
    :cond_d
    move/from16 v0, p7

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    const/4 v4, 0x0

    if-nez p4, :cond_e

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    :goto_8
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_2

    :cond_e
    neg-float v2, v10

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto :goto_8

    .line 1259
    :cond_f
    move/from16 v0, p8

    move/from16 v1, p7

    if-lt v0, v1, :cond_10

    .line 1262
    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v10, v2

    const/4 v4, 0x0

    if-nez p4, :cond_12

    move/from16 v0, p7

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :goto_9
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_2

    .line 1260
    :cond_10
    move/from16 v0, p8

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    const/4 v4, 0x0

    if-nez p4, :cond_11

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    :goto_a
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p3, v4, v3, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_2

    :cond_11
    neg-float v2, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto :goto_a

    .line 1262
    :cond_12
    move/from16 v0, p7

    int-to-float v2, v0

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto :goto_9

    .line 1265
    :cond_13
    move/from16 v0, p7

    int-to-float v2, v0

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    goto/16 :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    .line 78
    new-instance v3, Lcom/huawei/videoengine/FpsStatistic;

    const-string/jumbo v4, "Camera Out"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lcom/huawei/videoengine/FpsStatistic;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 79
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .local v0, "-l_1_R":Ljava/lang/Object;
    monitor-enter v0

    .line 80
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 85
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    return-void

    .line 81
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 85
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    .local v2, "-l_3_R":Ljava/lang/Object;
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .prologue
    .line 421
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 422
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 423
    return-void
.end method

.method private startBackgroundThread()V
    .locals 3

    .prologue
    .line 293
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "#step#startBackgroudThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "CameraBackground"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 295
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 296
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 298
    .local v0, "-l_1_R":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 305
    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$4;

    invoke-direct {v1, p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android$4;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    .line 336
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    .line 301
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "startBackgroudThread getLooper err!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    .prologue
    .line 339
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "#step#stopBackgroundThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 7
    .param p3, "-l_6_R"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 517
    const/4 v0, 0x1

    .line 518
    .local v0, "-l_5_I":I
    monitor-enter p3

    .line 519
    if-nez p1, :cond_0

    .line 529
    :goto_0
    if-eqz p2, :cond_2

    .line 531
    :try_start_0
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 535
    :goto_1
    if-eqz v0, :cond_4

    .line 541
    const-string/jumbo v3, "mWindowSurface"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 545
    const-string/jumbo v3, "mEncWindowSurface"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWinowSurface str:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "not mWindowSurface or mEncWindowSurface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hme_engine_java"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_2
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-eqz v3, :cond_9

    .line 570
    :goto_3
    monitor-exit p3

    .line 571
    return v6

    .line 520
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eq v3, p2, :cond_1

    .line 524
    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v2

    .local v2, "-l_8_R":Ljava/lang/Object;
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 521
    .end local v2    # "-l_8_R":Ljava/lang/Object;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upWindowSF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", is same as current\'s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hme_engine_java"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 532
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 536
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no need to create windowSF("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), beause Surface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is null, or Surface isValid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hme_engine_java"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    monitor-exit p3

    return v6

    .line 542
    :cond_5
    new-instance v3, Lcom/huawei/videoengine/WindowSurface;

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p2, v5}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 543
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "#winsf# mWindowSurface create"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v3}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 547
    :cond_6
    :try_start_2
    new-instance v3, Lcom/huawei/videoengine/WindowSurface;

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p2, v5}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 549
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    if-nez v3, :cond_8

    .line 552
    :cond_7
    :goto_4
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "#winsf# mEncWindowSurface create"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v3}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "-l_7_R":Ljava/lang/Object;
    :try_start_3
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "RuntimeException error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-wide v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v4, v5}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 549
    .end local v1    # "-l_7_R":Ljava/lang/Object;
    :cond_8
    if-eqz p2, :cond_7

    .line 550
    :try_start_4
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    invoke-virtual {v3, p2}, Lcom/huawei/videoengine/SurfaceEncoder;->setEncSurface(Landroid/view/Surface;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 564
    :cond_9
    :try_start_5
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "#step#FullFrame 2d programe create "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v3, Lcom/huawei/videoengine/FullFrameRect;

    new-instance v4, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object v5, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {v4, v5}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {v3, v4}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 566
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {v3}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result v3

    iput v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 567
    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, v3}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 568
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "FullFrame created "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method


# virtual methods
.method public allocateCamera(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 461
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "#step# allocateCamera"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v3, "camera"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    .line 463
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    if-eqz v3, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startBackgroundThread()V

    .line 469
    :try_start_0
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, p1

    .line 475
    .local v0, "-l_4_R":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "-l_5_I":I
    :goto_0
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 480
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 481
    .local v2, "-l_5_R":Ljava/lang/Object;
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I

    .line 482
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I

    .line 485
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-static {v3, v0}, Lcom/huawei/videoengine/Camera2Characteristic;->isFaceFront(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z

    .line 486
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 497
    .end local v1    # "-l_5_I":I
    .end local v2    # "-l_5_R":Ljava/lang/Object;
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 464
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "get camera manager failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return v5

    .line 470
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is beyond the cameraList length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hme_engine_java"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v5

    .line 476
    .restart local v0    # "-l_4_R":Ljava/lang/Object;
    .restart local v1    # "-l_5_I":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "camera["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hme_engine_java"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 487
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v1    # "-l_5_I":I
    :catch_0
    move-exception v0

    .line 488
    .restart local v0    # "-l_4_R":Ljava/lang/Object;
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "CameraAccessException, maybe cameraDevice has been disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 490
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 491
    .restart local v0    # "-l_4_R":Ljava/lang/Object;
    const-string/jumbo v3, "hme_engine_java"

    const-string/jumbo v4, "NULL PointerEx"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 493
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 494
    .restart local v0    # "-l_4_R":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public backInitEGl(Landroid/view/Surface;Landroid/view/Surface;II)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 634
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v2, :cond_0

    .line 645
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "egl has been inited"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-wide v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2, v3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 647
    return v6

    .line 636
    :cond_0
    :try_start_0
    new-instance v2, Lcom/huawei/videoengine/EglCore;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/huawei/videoengine/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    if-nez p4, :cond_2

    .line 651
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wwmax viewSfW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", viewSfH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme_engine_java"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .local v0, "-l_5_R":Ljava/lang/Object;
    monitor-enter v0

    .line 655
    :try_start_1
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 656
    iput p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 657
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    const-string/jumbo v4, "mWindowSurface"

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 660
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    if-nez v2, :cond_3

    .line 665
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    const-string/jumbo v4, "mEncWindowSurface"

    invoke-direct {p0, v2, p2, v3, v4}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 668
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->createCaptureSession()V

    .line 700
    return v6

    .line 637
    .end local v0    # "-l_5_R":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 638
    .restart local v0    # "-l_5_R":Ljava/lang/Object;
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "new EglCore fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-wide v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v2, v3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 640
    return v6

    .line 650
    .end local v0    # "-l_5_R":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_1

    goto :goto_0

    .line 657
    .restart local v0    # "-l_5_R":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .local v1, "-l_6_R":Ljava/lang/Object;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 661
    .end local v1    # "-l_6_R":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "encSf exit befor initEGL, use encSfupdateTmp for mEncWindowSurface"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    const-string/jumbo v5, "mEncWindowSurface"

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 663
    iput-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    goto :goto_1
.end method

.method public createCaptureSession()V
    .locals 5

    .prologue
    .line 352
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_0

    .line 356
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "#step#captrue session create"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_1

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 364
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mReq:Landroid/hardware/camera2/CaptureRequest;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "-l_1_R":Ljava/lang/Object;
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_2

    .line 371
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 372
    .local v1, "-l_2_R":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 375
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$5;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$5;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "-l_2_R":Ljava/lang/Object;
    :goto_0
    return-void

    .line 353
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "capture session exist, no need create "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 358
    :cond_1
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "cameraDevice is null, can not create capture session"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 368
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "cameraTexure is null when create capture session, must be initEGL first"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    return-void

    .line 395
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 396
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public destroy()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1083
    const-string/jumbo v6, "hme_engine_java"

    const-string/jumbo v7, "#step#destroy"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v6, :cond_0

    .line 1087
    :goto_0
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v6, :cond_1

    .line 1091
    :goto_1
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v6, :cond_2

    .line 1096
    :goto_2
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v6, :cond_3

    .line 1101
    :goto_3
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .local v1, "-l_1_R":Ljava/lang/Object;
    monitor-enter v1

    .line 1102
    :try_start_0
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-nez v6, :cond_4

    .line 1107
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v6, :cond_5

    .line 1115
    :goto_5
    const/4 v0, -0x1

    .line 1116
    .local v0, "-l_1_I":I
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .local v2, "-l_2_R":Ljava/lang/Object;
    monitor-enter v2

    .line 1117
    :try_start_1
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 1119
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1120
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1122
    :goto_6
    :try_start_2
    iget-boolean v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_6

    .line 1129
    :try_start_3
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v6}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 1130
    if-nez v0, :cond_7

    .line 1133
    :goto_7
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    .line 1135
    :goto_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1137
    return v0

    .line 1085
    .end local v0    # "-l_1_I":I
    .end local v1    # "-l_1_R":Ljava/lang/Object;
    .end local v2    # "-l_2_R":Ljava/lang/Object;
    :cond_0
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v8}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_0

    .line 1088
    :cond_1
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1089
    iput-object v8, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    goto :goto_1

    .line 1092
    :cond_2
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1093
    iput-object v8, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    goto :goto_2

    .line 1097
    :cond_3
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1098
    iput-object v8, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_3

    .line 1103
    .restart local v1    # "-l_1_R":Ljava/lang/Object;
    :cond_4
    :try_start_4
    const-string/jumbo v6, "hme_engine_java"

    const-string/jumbo v7, "#winsf#mEncWindowSurface realse"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v6}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1105
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    goto :goto_4

    .line 1107
    :catchall_0
    move-exception v2

    .restart local v2    # "-l_2_R":Ljava/lang/Object;
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1110
    .end local v2    # "-l_2_R":Ljava/lang/Object;
    :cond_5
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    .line 1111
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    .line 1112
    iput-object v8, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    goto :goto_5

    .line 1123
    .restart local v0    # "-l_1_I":I
    .restart local v2    # "-l_2_R":Ljava/lang/Object;
    :cond_6
    :try_start_5
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 1124
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 1126
    :catch_0
    move-exception v3

    .line 1127
    .local v3, "-l_3_R":Ljava/lang/Object;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1129
    :try_start_7
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v6}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 1130
    if-nez v0, :cond_8

    .line 1133
    :goto_9
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    goto :goto_8

    .line 1135
    .end local v3    # "-l_3_R":Ljava/lang/Object;
    :catchall_1
    move-exception v5

    .local v5, "-l_5_R":Ljava/lang/Object;
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .line 1131
    .end local v5    # "-l_5_R":Ljava/lang/Object;
    :cond_7
    :try_start_8
    const-string/jumbo v6, "hme_engine_java"

    const-string/jumbo v7, "destroy failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .restart local v3    # "-l_3_R":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v6, "hme_engine_java"

    const-string/jumbo v7, "destroy failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1129
    .end local v3    # "-l_3_R":Ljava/lang/Object;
    :catchall_2
    move-exception v4

    .local v4, "-l_4_R":Ljava/lang/Object;
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v6}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 1130
    if-nez v0, :cond_9

    .line 1133
    :goto_a
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    throw v4

    .line 1131
    :cond_9
    const-string/jumbo v6, "hme_engine_java"

    const-string/jumbo v7, "destroy failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_a
.end method

.method public dropFrame()V
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 831
    return-void
.end method

.method public initEGl(Landroid/view/Surface;Landroid/view/Surface;IIII)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#step# initEGL, viewSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", encSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "View("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "); Cap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 626
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;-><init>(Landroid/view/Surface;Landroid/view/Surface;II)V

    .line 627
    .local v0, "-l_7_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p5, p6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    return v4

    .line 623
    .end local v0    # "-l_7_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "wwmax backThreadHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v1, -0x1

    return v1
.end method

.method native nDropEncFrame(JIIIII)Z
.end method

.method native nGetRoiCoordinate(JI[IJ)V
.end method

.method native nMsgSend(IJ)V
.end method

.method native provideOutBuffer(Ljava/nio/ByteBuffer;IIJ)V
.end method

.method public setAspectMode(IZ)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1283
    packed-switch p1, :pswitch_data_0

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wwmax setAspectMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v1, -0x1

    return v1

    .line 1285
    :pswitch_0
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->none:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1297
    .local v0, "-l_3_R":Ljava/lang/Object;
    :goto_0
    if-nez p2, :cond_0

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " set Enc AspectMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1303
    :goto_1
    return v3

    .line 1288
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    :pswitch_1
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    goto :goto_0

    .line 1291
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    :pswitch_2
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .restart local v0    # "-l_3_R":Ljava/lang/Object;
    goto :goto_0

    .line 1298
    :cond_0
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    goto :goto_1

    .line 1283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDstSf([Landroid/view/Surface;I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 436
    if-lez p2, :cond_0

    .line 439
    const/4 v1, 0x2

    if-ge p2, v1, :cond_1

    .line 443
    :goto_0
    const/4 v0, 0x0

    .local v0, "-l_3_I":I
    :goto_1
    if-lt v0, p2, :cond_2

    .line 446
    return v3

    .line 437
    .end local v0    # "-l_3_I":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dstSf, invailed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v1, -0x1

    return v1

    .line 440
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dstSf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    .restart local v0    # "-l_3_I":I
    :cond_2
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mArraySf:Ljava/util/ArrayList;

    aget-object v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setEncRotation(II)I
    .locals 4

    .prologue
    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#step#rotate enc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", left for cvo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme_engine_java"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .local v0, "-l_3_R":Ljava/lang/Object;
    monitor-enter v0

    .line 1202
    :try_start_0
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1203
    rsub-int v2, p1, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 1204
    iget v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 1207
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1208
    const/4 v2, 0x0

    return v2

    .line 1204
    :cond_1
    iget v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_0

    .line 1205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wwmax mRotEnc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme_engine_java"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1207
    :catchall_0
    move-exception v1

    .local v1, "-l_4_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFrameReceiver(Lcom/huawei/videoengine/SurfaceEncoder;)I
    .locals 4

    .prologue
    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#step# setFrameReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme_engine_java"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 1001
    :try_start_0
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 1002
    monitor-exit v0

    .line 1003
    const/4 v2, 0x0

    return v2

    .line 1002
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPreviewRotation(I)I
    .locals 3

    .prologue
    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#step# rotate preiview: r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme_engine_java"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    rsub-int v0, p1, 0x168

    .line 1186
    .local v0, "-l_2_I":I
    iput v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1187
    const/4 v1, 0x0

    return v1
.end method

.method public setPreviewSf(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfPreview:Landroid/view/Surface;

    .line 428
    return-void
.end method

.method public startCapture()I
    .locals 5

    .prologue
    .line 1018
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "#step#startCapture"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1032
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "CameraPreview"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    .line 1033
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1034
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "startCapture end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v1, 0x0

    return v1

    .line 1021
    :cond_0
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "wwmax mCaptureSession is null when startCapture"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v1, -0x1

    return v1

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public startPreview()I
    .locals 2

    .prologue
    .line 1064
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "#step#start preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 1066
    const/4 v0, 0x0

    return v0
.end method

.method public stopCapture()I
    .locals 3

    .prologue
    .line 1045
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "#step# stopcapture"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    .line 1060
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1048
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1049
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopPreview()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1070
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "#step#stop preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 1072
    return v2
.end method

.method public test(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 988
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "wwmax test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public updateEncSf(Landroid/view/Surface;)V
    .locals 5

    .prologue
    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#step# update encSf:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mEncWindowSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", eglcore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hme_engine_java"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    if-nez v2, :cond_2

    .line 849
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 854
    if-nez p1, :cond_4

    .line 859
    :cond_1
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v2, :cond_5

    .line 864
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .local v0, "-l_2_R":Ljava/lang/Object;
    monitor-enter v0

    .line 865
    :try_start_0
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-nez v2, :cond_6

    .line 877
    :goto_1
    if-eqz p1, :cond_8

    .line 881
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "#winsf#mEncWindowSurface create"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v2, Lcom/huawei/videoengine/WindowSurface;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 885
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 888
    return-void

    .line 844
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_2
    if-eqz p1, :cond_0

    .line 845
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    invoke-virtual {v2, p1}, Lcom/huawei/videoengine/SurfaceEncoder;->setEncSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 850
    :cond_3
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "background is null when updateEncSf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void

    .line 854
    :cond_4
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 855
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "encsf is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void

    .line 860
    :cond_5
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "#step#now egl has not init, save update encSf"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 862
    return-void

    .line 867
    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v2

    if-nez v2, :cond_7

    .line 871
    :goto_2
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "#winsf#mEncWindowSurface  release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 873
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    goto :goto_1

    .line 885
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 868
    .end local v1    # "-l_3_R":Ljava/lang/Object;
    :cond_7
    :try_start_2
    const-string/jumbo v2, "hme_engine_java"

    const-string/jumbo v3, "#winsf#mEncWindowSurface makeNothingCurrent "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v2}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    goto :goto_2

    .line 878
    :cond_8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public updatePreViewSf(Landroid/view/Surface;II)I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "#step# update PreViewSf:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",w:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",h:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "hme_engine_java"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "-l_4_I":I
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .local v1, "-l_5_R":Ljava/lang/Object;
    monitor-enter v1

    .line 918
    :try_start_0
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 919
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 920
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 922
    :goto_0
    :try_start_1
    iget-boolean v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 930
    :try_start_2
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v5}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 932
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 933
    return v0

    .line 912
    .end local v0    # "-l_4_I":I
    .end local v1    # "-l_5_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v5, "hme_engine_java"

    const-string/jumbo v6, "wwmax mBackThread is null when updatepreview"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return v7

    .line 924
    .restart local v0    # "-l_4_I":I
    .restart local v1    # "-l_5_R":Ljava/lang/Object;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 926
    :catch_0
    move-exception v2

    .line 928
    .local v2, "-l_6_R":Ljava/lang/Object;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 930
    :try_start_5
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v5}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    goto :goto_1

    .end local v2    # "-l_6_R":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    .local v3, "-l_7_R":Ljava/lang/Object;
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v5}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    throw v3

    .line 932
    .end local v3    # "-l_7_R":Ljava/lang/Object;
    :catchall_1
    move-exception v4

    .local v4, "-l_8_R":Ljava/lang/Object;
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method public updatePreview()I
    .locals 5

    .prologue
    .line 401
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 407
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 409
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$6;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$6;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 402
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "hme_engine_java"

    const-string/jumbo v2, "wwmax mCaptureSession is null when startCapture"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v1, -0x1

    return v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method
