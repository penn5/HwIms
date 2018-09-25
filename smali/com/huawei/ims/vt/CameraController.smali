.class public Lcom/huawei/ims/vt/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/huawei/ims/vt/ImsMedia$CameraListener;
.implements Lcom/huawei/ims/ICallListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/CameraController$1;,
        Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;
    }
.end annotation


# static fields
.field public static final CAAS_EVENT_PARAM_READY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

.field private static final CALL_TYPE_MO:I = 0x1

.field private static final CALL_TYPE_MT:I = 0x2

.field private static final EVENT_RETRY_TO_OPEN_CARMERA:I = 0x1

.field private static final INVALID_RETURN_VALUE:I = 0x1

.field private static final INVALID_SESSION_ID:I = -0x1

.field private static final OPEN_CAMERA_DELAY:I = 0x64

.field private static final OPEN_CAMERA_FAIL_RETRY:I = -0x2

.field private static final STATE_DEFAULT:I = -0x1

.field private static final STATE_HOLDING:I = 0x0

.field private static final STATE_RESUME:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraController"

.field private static mCallSessionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCameraIdForSessoion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mImsSDKResIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/huawei/ims/vt/CameraController;


# instance fields
.field private mBgVideoCallShouldResume:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCAMERASesId:I

.field private mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

.field private mContext:Landroid/content/Context;

.field private mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

.field private mFristToMergeCall:Z

.field private mHandler:Landroid/os/Handler;

.field private mHavePauseAndStop:Z

.field mHoldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/huawei/ims/ImsCallSessionImpl;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIMSSDKResId:I

.field private mIsHandupCurrentCallSession:Z

.field private mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

.field private mMedia:Lcom/huawei/ims/vt/ImsMedia;

.field private mPreSetSurface:Landroid/view/Surface;

.field private mSDKCameraOpen:Z

.field private mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;


# direct methods
.method static synthetic -get0(Lcom/huawei/ims/vt/CameraController;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/vt/CameraController;

    .prologue
    iget v0, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    return v0
.end method

.method static synthetic -get1(Lcom/huawei/ims/vt/CameraController;)Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/vt/CameraController;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/huawei/ims/vt/CameraController;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/vt/CameraController;

    .prologue
    iget v0, p0, Lcom/huawei/ims/vt/CameraController;->mIMSSDKResId:I

    return v0
.end method

.method static synthetic -get3()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -set0(Lcom/huawei/ims/vt/CameraController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/vt/CameraController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/huawei/ims/vt/CameraController;->mIMSSDKResId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/huawei/ims/vt/CameraController;I)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/vt/CameraController;
    .param p1, "currentCallType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraController;->resumeImsRTPStream(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->mLock:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 80
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 82
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 84
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 89
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 99
    new-instance v0, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;-><init>(Lcom/huawei/ims/vt/CameraController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    .line 110
    iput v2, p0, Lcom/huawei/ims/vt/CameraController;->mIMSSDKResId:I

    .line 111
    iput v2, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    .line 481
    new-instance v0, Lcom/huawei/ims/vt/CameraController$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraController$1;-><init>(Lcom/huawei/ims/vt/CameraController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/huawei/ims/vt/ImsMedia;

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 80
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 82
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 84
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 89
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 99
    new-instance v0, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;-><init>(Lcom/huawei/ims/vt/CameraController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    .line 110
    iput v2, p0, Lcom/huawei/ims/vt/CameraController;->mIMSSDKResId:I

    .line 111
    iput v2, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    .line 481
    new-instance v0, Lcom/huawei/ims/vt/CameraController$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraController$1;-><init>(Lcom/huawei/ims/vt/CameraController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 418
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController;->mContext:Landroid/content/Context;

    .line 419
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mMedia:Lcom/huawei/ims/vt/ImsMedia;

    .line 420
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mMedia:Lcom/huawei/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/huawei/ims/vt/ImsMedia;->setCameraListener(Lcom/huawei/ims/vt/ImsMedia$CameraListener;)V

    .line 421
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

    .line 422
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraController;->registerVTBroadcast()V

    .line 423
    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/vt/CameraController;
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->sInstance:Lcom/huawei/ims/vt/CameraController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/huawei/ims/vt/ImsMedia;

    .prologue
    .line 119
    sget-object v1, Lcom/huawei/ims/vt/CameraController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->sInstance:Lcom/huawei/ims/vt/CameraController;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/huawei/ims/vt/CameraController;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/vt/CameraController;-><init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V

    sput-object v0, Lcom/huawei/ims/vt/CameraController;->sInstance:Lcom/huawei/ims/vt/CameraController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 4
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "hasFailed"    # Z

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const-string/jumbo v1, "CameraController"

    const-string/jumbo v2, "sendCameraStatus: session is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 262
    :cond_0
    const-string/jumbo v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCameraStatus: Notifying Session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 264
    .local v0, "provider":Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0, p2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->sendCameraStatus(Z)V

    .line 268
    :cond_1
    return-void
.end method

.method private pauseImsRTPStream(I)V
    .locals 6
    .param p1, "currentCallType"    # I

    .prologue
    const/4 v2, 0x0

    .line 715
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 716
    .local v0, "direction":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RTPController;->pauseRTPStream(I)I

    move-result v1

    .line 717
    .local v1, "result":I
    const-string/jumbo v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCallSessionHold result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void
.end method

.method private pauseVideoAndStopPreview(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/android/ims/ImsCallProfile;)V
    .locals 7
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "cp"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v6, 0x0

    .line 693
    const-string/jumbo v4, "CameraController"

    const-string/jumbo v5, "pauseVideoAndStopPreview"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {p0, v6}, Lcom/huawei/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;)V

    .line 695
    iget v4, p2, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 696
    .local v0, "currentVideoState":I
    new-instance v3, Landroid/telecom/VideoProfile;

    or-int/lit8 v4, v0, 0x4

    invoke-direct {v3, v4}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 697
    .local v3, "requestProfile":Landroid/telecom/VideoProfile;
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 698
    .local v1, "fromProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v2

    .line 699
    .local v2, "provider":Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    if-nez v2, :cond_0

    .line 700
    const-string/jumbo v4, "CameraController"

    const-string/jumbo v5, "pauseVideoAndStopPreview,provider is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void

    .line 703
    :cond_0
    invoke-virtual {v2, v1, v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 704
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v4}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 707
    :cond_1
    return-void
.end method

.method private recoverToSetCurrentSessionId(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 4
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 737
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 738
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 739
    .local v1, "enableSetCurrentSessionId":Z
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v2}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 740
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 741
    .local v0, "currentSessionId":I
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 743
    .end local v0    # "currentSessionId":I
    :cond_0
    return-void

    .line 738
    .end local v1    # "enableSetCurrentSessionId":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "enableSetCurrentSessionId":Z
    goto :goto_0

    .line 737
    .end local v1    # "enableSetCurrentSessionId":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "enableSetCurrentSessionId":Z
    goto :goto_0
.end method

.method private registerVTBroadcast()V
    .locals 3

    .prologue
    .line 524
    const-string/jumbo v1, "CameraController"

    const-string/jumbo v2, "registerVTBroadcast"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 526
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController;->mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 528
    return-void
.end method

.method private removeInvalidCallSession()V
    .locals 4

    .prologue
    .line 781
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 782
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 783
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 784
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 785
    .local v0, "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverCallIms;

    move-result-object v3

    if-nez v3, :cond_0

    .line 786
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 789
    .end local v0    # "callSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method private resumeImsRTPStream(I)V
    .locals 6
    .param p1, "currentCallType"    # I

    .prologue
    const/4 v2, 0x0

    .line 726
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 727
    .local v0, "direction":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RTPController;->resumeRTPStream(I)I

    move-result v1

    .line 728
    .local v1, "result":I
    const-string/jumbo v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCallSessionResumed result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method


# virtual methods
.method public cleanPreStatus()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    .line 104
    return-void
.end method

.method public close(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 12
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "isHangUpCall"    # Z

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 279
    const-string/jumbo v5, "CameraController"

    const-string/jumbo v6, "close camera"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz p1, :cond_0

    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 284
    :cond_0
    const-string/jumbo v5, "CameraController"

    const-string/jumbo v6, "close don\'t contains Key return"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 289
    :cond_1
    const/4 v4, 0x1

    .line 290
    .local v4, "shouldCameraRelease":Z
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v11, :cond_2

    .line 291
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 292
    .local v3, "sessionId":I
    invoke-static {v3}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    move-result v2

    .line 293
    .local v2, "result":I
    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "close sure set now CurrentSessionID  result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-ne v2, v10, :cond_2

    .line 295
    const/4 v4, 0x0

    .line 298
    .end local v2    # "result":I
    .end local v3    # "sessionId":I
    :cond_2
    iget-boolean v5, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v11, :cond_3

    if-eqz v4, :cond_3

    .line 299
    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSDKCameraOpen is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isMT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->isMT()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->isMT()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 301
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraRelease(I)I

    .line 305
    :goto_0
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 306
    .restart local v3    # "sessionId":I
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 307
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 311
    .end local v3    # "sessionId":I
    :cond_3
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 312
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    iput-object v8, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 317
    :cond_4
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 318
    const-string/jumbo v5, "CameraController"

    const-string/jumbo v6, "close camera mConferenceCallSession = null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-object v8, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 322
    :cond_5
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 323
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_6
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 326
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_7
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 329
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 330
    .local v1, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 331
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .end local v1    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->getHoldCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 334
    .local v0, "holdCallSessionImp":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_9

    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v11, :cond_9

    .line 335
    iput-boolean v10, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 341
    :cond_9
    if-eqz p2, :cond_e

    .line 342
    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isHangUpCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraController;->removeInvalidCallSession()V

    .line 350
    :goto_1
    if-eqz v4, :cond_a

    .line 351
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraController;->recoverToSetCurrentSessionId(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 354
    :cond_a
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v5

    if-nez v5, :cond_b

    .line 355
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iput-boolean v9, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 357
    iput-boolean v9, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 358
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 359
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 360
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 361
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 363
    iput-boolean v9, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 366
    :cond_b
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v5}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 367
    iput-object v8, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 368
    iput-boolean v9, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 369
    iput-boolean v9, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 374
    :cond_c
    const-string/jumbo v5, "CameraController"

    const-string/jumbo v6, "close camera end"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 303
    .end local v0    # "holdCallSessionImp":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_d
    invoke-static {v10}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraRelease(I)I

    goto/16 :goto_0

    .line 347
    .restart local v0    # "holdCallSessionImp":Lcom/huawei/ims/ImsCallSessionImpl;
    :cond_e
    sget-object v5, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getCureentCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public getHoldCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4

    .prologue
    .line 806
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 807
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 808
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 809
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 810
    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "getHoldCallSessionImp"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v2

    .line 814
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_1
    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "getHoldCallSessionImp return null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v2, 0x0

    return-object v2
.end method

.method public getOtherCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 4

    .prologue
    .line 793
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 794
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 796
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 797
    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "getOtherCallSessionImp "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v2

    .line 801
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_1
    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "getOtherCallSessionImp return null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v2, 0x0

    return-object v2
.end method

.method public initBgVideoCallShouldResume()V
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 824
    return-void
.end method

.method public isBgVideoCallShouldResume()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    return v0
.end method

.method public isCurrentHaveMoreThanOneVideoCall()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 747
    const/4 v2, 0x0

    .line 748
    .local v2, "videoCallNum":I
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 749
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 751
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 752
    add-int/lit8 v2, v2, 0x1

    .line 753
    const-string/jumbo v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCurrentHaveMoreThanOneVideoCall videoCallNum  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 757
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_1
    if-le v2, v6, :cond_2

    .line 758
    const-string/jumbo v3, "CameraController"

    const-string/jumbo v4, "isCurrentHaveMoreThanOneVideoCall return true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return v6

    .line 761
    :cond_2
    const-string/jumbo v3, "CameraController"

    const-string/jumbo v4, "isCurrentHaveMoreThanOneVideoCall return false"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v3, 0x0

    return v3
.end method

.method public isCurrentHaveVideoCall()Z
    .locals 4

    .prologue
    .line 766
    sget-object v2, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 767
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 769
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 770
    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "isCurrentHaveVideoCall return true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v2, 0x1

    return v2

    .line 774
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_1
    const-string/jumbo v2, "CameraController"

    const-string/jumbo v3, "isCurrentHaveVideoCall return false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v2, 0x0

    return v2
.end method

.method public isParamReady()Z
    .locals 2

    .prologue
    .line 513
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mImsSDKResIdSet:Ljava/util/Set;

    iget v1, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x1

    return v0

    .line 516
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCallSessionAdded(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 4
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    const/4 v3, -0x1

    .line 458
    if-nez p1, :cond_0

    .line 459
    const-string/jumbo v0, "CameraController"

    const-string/jumbo v1, "onCallSessionAdded callSession==null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void

    .line 462
    :cond_0
    const-string/jumbo v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallSessionAdded currentCallType set default session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_1
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    sget-object v0, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_2
    return-void
.end method

.method public onCallSessionRemoved(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 477
    const-string/jumbo v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallSessionRemoved only to know is doClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method public onCameraConfigChanged(IISLandroid/view/Surface;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # S
    .param p4, "surface"    # Landroid/view/Surface;

    .prologue
    .line 430
    return-void
.end method

.method public onMediaDeinitialized()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public onRecordingDisabled()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onRecordingEnabled()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public open(Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 134
    const-string/jumbo v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "open: camearId is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "cameraOpened":Z
    const/4 v0, 0x0

    .line 139
    .local v0, "cameraIdChanged":Z
    if-nez p1, :cond_0

    .line 140
    const-string/jumbo v7, "CameraController"

    const-string/jumbo v8, "open: Invalid camera id, null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 143
    :cond_0
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 144
    const/4 v1, 0x1

    .line 145
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "currentCameraId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 151
    .end local v2    # "currentCameraId":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 152
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v11, :cond_3

    if-eqz v1, :cond_3

    xor-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_3

    .line 156
    const-string/jumbo v7, "CameraController"

    const-string/jumbo v8, "open alrady open the Camera"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 158
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 159
    .local v6, "sesId":I
    invoke-static {v6}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 160
    invoke-direct {p0, p2, v10}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 161
    iput v6, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    .line 162
    return-void

    .line 166
    .end local v6    # "sesId":I
    :cond_3
    if-eqz v1, :cond_4

    :try_start_0
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v11, :cond_d

    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p2, v7}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    .line 169
    iget-boolean v7, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    if-eqz v7, :cond_9

    .line 170
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 176
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 177
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallSessionImpl;->isMT()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraOpen(II)I

    move-result v7

    iput v7, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    .line 182
    :goto_1
    const-string/jumbo v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "open camera result session id is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "call type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallSessionImpl;->isMT()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_6
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 187
    iget v7, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    if-ltz v7, :cond_b

    .line 188
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 194
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 195
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget v8, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, p2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget v7, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    invoke-static {v7}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 198
    iget-boolean v7, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    if-eqz v7, :cond_7

    .line 199
    const-string/jumbo v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "open mFristToMergeCall is true , mConferenceCallSession "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 201
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 206
    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0, p2, v7}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 254
    :cond_8
    :goto_2
    return-void

    .line 172
    :cond_9
    const-string/jumbo v7, "CameraController"

    const-string/jumbo v8, "open mHavePauseAndStop is false need pauseVideoAndStopPreview"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    iget-object v8, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/huawei/ims/vt/CameraController;->pauseVideoAndStopPreview(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 250
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "CameraController"

    const-string/jumbo v8, "NumberFormatException when open camera"

    invoke-static {v7, v8, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 180
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraOpen(II)I

    move-result v7

    iput v7, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    goto/16 :goto_1

    .line 208
    :cond_b
    iget v7, p0, Lcom/huawei/ims/vt/CameraController;->mCAMERASesId:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_c

    .line 209
    const-string/jumbo v7, "CameraController"

    const-string/jumbo v8, "open the camera failed, wrong call type"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huawei/ims/vt/CameraController;->mSDKCameraOpen:Z

    .line 212
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraController;->mTryOpenCameraCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 214
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 215
    .local v4, "msg":Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->what:I

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 217
    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 220
    .end local v4    # "msg":Landroid/os/Message;
    :cond_c
    const-string/jumbo v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "open the camera failed, the cameraId is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v7, 0x1

    invoke-direct {p0, p2, v7}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 225
    sget-object v7, Lcom/huawei/ims/vt/ImsVideoGlobals;->mChrReporter:Lcom/huawei/ims/SDKChrReport;

    if-eqz v7, :cond_8

    .line 226
    sget-object v7, Lcom/huawei/ims/vt/ImsVideoGlobals;->mChrReporter:Lcom/huawei/ims/SDKChrReport;

    invoke-virtual {v7}, Lcom/huawei/ims/SDKChrReport;->getCameraOpenFailedReason()V

    goto/16 :goto_2

    .line 231
    :cond_d
    if-eqz v0, :cond_f

    .line 232
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->switchCameras()I

    move-result v5

    .line 234
    .local v5, "result":I
    const-string/jumbo v7, "CameraController"

    const-string/jumbo v8, "switchCameras"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez v5, :cond_e

    .line 237
    sget-object v7, Lcom/huawei/ims/vt/CameraController;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v7, 0x0

    invoke-direct {p0, p2, v7}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    goto/16 :goto_2

    .line 242
    :cond_e
    const-string/jumbo v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "switch camera failed, the cameraId is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v7, 0x1

    invoke-direct {p0, p2, v7}, Lcom/huawei/ims/vt/CameraController;->noticeCameraFailed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    goto/16 :goto_2

    .line 248
    .end local v5    # "result":I
    :cond_f
    const-string/jumbo v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "open the camera again, ignore, the cameraId is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public setCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 10
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .prologue
    const/4 v9, 0x0

    .line 540
    const-string/jumbo v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCallSessionHold session"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mCurrentCallSession:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v6, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 543
    const-string/jumbo v6, "CameraController"

    const-string/jumbo v7, "setCallSessionHold map don\'t contains key retrun"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void

    .line 546
    :cond_0
    sget-object v6, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 547
    const-string/jumbo v6, "CameraController"

    const-string/jumbo v7, "setCallSessionHold have default session return"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void

    .line 551
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 553
    .local v0, "cp":Lcom/android/ims/ImsCallProfile;
    iget v6, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v6}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 554
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    .line 556
    .local v2, "isVideoCallType":Z
    if-eqz v2, :cond_4

    .line 557
    sget-object v6, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v6}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 561
    sget-object v6, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 562
    .local v5, "sessionId":I
    invoke-static {v5}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 564
    .end local v5    # "sessionId":I
    :cond_2
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 565
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 566
    .local v3, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .end local v3    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :goto_0
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v6}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    if-nez v6, :cond_3

    .line 574
    iput-boolean v9, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    .line 576
    :cond_3
    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/CameraController;->pauseImsRTPStream(I)V

    .line 578
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraController;->recoverToSetCurrentSessionId(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 581
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v6}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    xor-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_4

    .line 582
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/vt/CameraController;->pauseVideoAndStopPreview(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/android/ims/ImsCallProfile;)V

    .line 585
    :cond_4
    return-void

    .line 569
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 570
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 11
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 593
    const-string/jumbo v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCallSessionResumed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ImsCallSessionImpl"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-object v6, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 595
    const-string/jumbo v6, "CameraController"

    const-string/jumbo v7, "setCallSessionResumed map don\'t contains key retrun"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 598
    :cond_0
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 599
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 600
    .local v3, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 601
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 602
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .end local v3    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 607
    .local v0, "cp":Lcom/android/ims/ImsCallProfile;
    iget v6, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v6}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 608
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    .line 609
    .local v2, "isVideoCallType":Z
    if-eqz v2, :cond_5

    .line 610
    sget-object v6, Lcom/huawei/ims/vt/CameraController;->mCallSessionState:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-boolean v6, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    if-nez v6, :cond_5

    .line 612
    sget-object v6, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v6, v9, :cond_6

    const/4 v4, 0x1

    .line 613
    .local v4, "onlyHaveOneCall":Z
    :goto_0
    const/4 v5, 0x0

    .line 614
    .local v5, "shouldResume":Z
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_7

    .line 615
    :goto_1
    const/4 v5, 0x1

    .line 617
    :cond_2
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v6}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 618
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v6

    if-eqz v6, :cond_3

    xor-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_4

    :cond_3
    if-eqz p2, :cond_8

    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    if-eqz v6, :cond_8

    .line 619
    :cond_4
    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/CameraController;->resumeImsRTPStream(I)V

    .line 628
    .end local v4    # "onlyHaveOneCall":Z
    .end local v5    # "shouldResume":Z
    :cond_5
    :goto_2
    iput-boolean v10, p0, Lcom/huawei/ims/vt/CameraController;->mIsHandupCurrentCallSession:Z

    .line 629
    return-void

    .line 612
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "onlyHaveOneCall":Z
    goto :goto_0

    .line 614
    .restart local v5    # "shouldResume":Z
    :cond_7
    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mHoldMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    goto :goto_1

    .line 621
    :cond_8
    if-eqz p2, :cond_5

    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    if-nez v6, :cond_5

    .line 622
    iput-boolean v9, p0, Lcom/huawei/ims/vt/CameraController;->mBgVideoCallShouldResume:Z

    goto :goto_2
.end method

.method public setCurrentSessionMerged()V
    .locals 6

    .prologue
    .line 662
    const-string/jumbo v3, "CameraController"

    const-string/jumbo v4, "setCurrentSessionMerged"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-nez v3, :cond_0

    .line 666
    const-string/jumbo v3, "CameraController"

    const-string/jumbo v4, "setCurrentSessionMerged mFristToMergeCall = true "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraController;->mFristToMergeCall:Z

    .line 668
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 683
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraController;->mHavePauseAndStop:Z

    .line 685
    return-void

    .line 670
    :cond_0
    const-string/jumbo v3, "CameraController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCurrentSessionMerged remove callSession only mConferenceCallSession "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v0, -0x1

    .line 672
    .local v0, "confSessionId":I
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 673
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 674
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 675
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 680
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_2
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 681
    sget-object v3, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/huawei/ims/vt/CameraController;->mConferenceCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCurrentSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 7
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 637
    const-string/jumbo v4, "CameraController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCurrentSessionStarted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ImsCallSessionImpl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget-object v4, Lcom/huawei/ims/vt/CameraController;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 639
    const-string/jumbo v4, "CameraController"

    const-string/jumbo v5, "setCallSessionHold map don\'t contains key retrun"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 643
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 644
    .local v0, "cp":Lcom/android/ims/ImsCallProfile;
    iget v4, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 645
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v3

    .line 646
    .local v3, "isVideoCallType":Z
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraController;->mCurrentCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v4}, Lcom/huawei/ims/ImsCallSessionImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 649
    .local v2, "isCurrentSession":Z
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_2

    .line 651
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->getOtherCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->getOtherCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/huawei/ims/vt/CameraController;->pauseVideoAndStopPreview(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/android/ims/ImsCallProfile;)V

    .line 659
    :cond_1
    :goto_0
    return-void

    .line 654
    :cond_2
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraController;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 656
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/huawei/ims/vt/CameraController;->close(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    goto :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    .line 384
    const-string/jumbo v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurface, surface is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-nez p1, :cond_0

    .line 387
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->stopCameraPreview()I

    .line 389
    const-string/jumbo v0, "CameraController"

    const-string/jumbo v1, "stopCameraPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iput-object v3, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    .line 392
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    .line 396
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController;->mPreSetSurface:Landroid/view/Surface;

    .line 397
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsCameraClient;->setNearEndSurface(Landroid/view/Surface;)I

    .line 398
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->startCameraPreview()I

    .line 400
    const-string/jumbo v0, "CameraController"

    const-string/jumbo v1, "start to setNearEndSurface and startCameraPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    return-void
.end method
