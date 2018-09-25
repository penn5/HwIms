.class public Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
.super Lcom/android/ims/internal/ImsVideoCallProvider;
.source "ImsVideoCallProviderImpl.java"

# interfaces
.implements Lcom/huawei/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$1;
    }
.end annotation


# static fields
.field private static final DISABLE_LTE_INFO_REPORT:I = 0x0

.field private static final ENABLE_LTE_INFO_REPORT:I = 0x1

.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsVideoCallProviderImpl"

.field private static final THRESHOLD_OF_CLOSE:I = 0x64


# instance fields
.field private isFristConference:Z

.field private mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

.field private mCameraController:Lcom/huawei/ims/vt/CameraController;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lcom/huawei/ims/ImsCallModification;

.field private mIsReportLTEInfo:Z

.field private mIsVideoPaused:Z

.field private mMediaController:Lcom/huawei/ims/vt/MediaController;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;

.field private mTotalDataUsage:J

.field private mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;


# direct methods
.method static synthetic -wrap0(Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyRequestDone(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification;)V
    .locals 3
    .param p1, "callSession"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "imsCallMod"    # Lcom/huawei/ims/ImsCallModification;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/ims/internal/ImsVideoCallProvider;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsReportLTEInfo:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    .line 51
    iput-boolean v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isFristConference:Z

    .line 82
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$1;-><init>(Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    .line 56
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsVideocallProviderImpl instance created,  imsCallMod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 59
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->getInstance()Lcom/huawei/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    .line 60
    invoke-static {}, Lcom/huawei/ims/vt/MediaController;->getInstance()Lcom/huawei/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    .line 61
    iput-object p2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    .line 63
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setGetResCallBack(Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;)V

    .line 65
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$2;-><init>(Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method private handleSessionModifyRequestDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    const-string/jumbo v1, "ImsVideoCallProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSessionModifyRequestDone msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 100
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 101
    const-string/jumbo v1, "ImsVideoCallProviderImpl"

    const-string/jumbo v2, "session modify request failed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 104
    const/4 v2, 0x4

    .line 102
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 106
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 105
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 108
    :cond_0
    return-void
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .locals 3
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 177
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVideoPauseRequested requestProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method private modifyRTPStreamDirection(II)V
    .locals 5
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .prologue
    .line 444
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v1

    .line 445
    .local v1, "oldDirection":I
    invoke-static {p2}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 447
    .local v0, "newDirection":I
    invoke-static {v1, v0}, Lcom/huawei/ims/vt/RTPController;->modifyRTPStreamDirection(II)I

    move-result v2

    .line 448
    .local v2, "ret":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 449
    const-string/jumbo v3, "ImsVideoCallProviderImpl"

    const-string/jumbo v4, "pauseOrResumeRTPStream failed!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    return-void
.end method

.method private modifyRTPStreamForTwoWayAndOneWaySwap()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 416
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-eqz v5, :cond_5

    .line 417
    iget-object v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v0

    .line 418
    .local v0, "callDetails":Lcom/huawei/ims/CallDetails;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    if-nez v5, :cond_1

    .line 419
    :cond_0
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    const-string/jumbo v6, "handleModifyCallResult callDetails or mResponseProfile is null!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 422
    :cond_1
    iget v1, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 423
    .local v1, "currentCallType":I
    iget-object v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v5}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    .line 424
    .local v3, "newVideoState":I
    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v2

    .line 425
    .local v2, "newCallType":I
    if-ne v1, v8, :cond_3

    .line 426
    if-eq v2, v10, :cond_2

    if-ne v3, v9, :cond_3

    .line 427
    :cond_2
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "modifyRTPStreamForTwoWayAndOneWaySwap TwoWay downgrade oneway:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v7}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0, v8, v2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->modifyRTPStreamDirection(II)V

    .line 430
    :cond_3
    if-ne v3, v8, :cond_5

    .line 431
    if-eq v1, v10, :cond_4

    if-ne v1, v9, :cond_5

    .line 432
    :cond_4
    invoke-static {v8}, Lcom/huawei/ims/vt/RTPController;->resumeRTPStream(I)I

    move-result v4

    .line 433
    .local v4, "results":I
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "modifyRTPStreamForTwoWayAndOneWaySwap oneway updategrade twoWay,result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v0    # "callDetails":Lcom/huawei/ims/CallDetails;
    .end local v1    # "currentCallType":I
    .end local v2    # "newCallType":I
    .end local v3    # "newVideoState":I
    .end local v4    # "results":I
    :cond_5
    return-void
.end method


# virtual methods
.method getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public handleModifyCallResult(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x4

    .line 344
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiveSessionModifyResponse, result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-nez p1, :cond_1

    .line 346
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "receiveSessionModifyResponse modify success"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 348
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    if-nez v0, :cond_0

    .line 349
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "illegal process! mResponseProfile is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->modifyRTPStreamForTwoWayAndOneWaySwap()V

    .line 356
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 355
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 381
    :goto_0
    return-void

    .line 357
    :cond_1
    const/16 v0, 0x49e7

    if-ne v0, p1, :cond_2

    .line 358
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "receiveSessionModifyResponse modify time out"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 359
    invoke-static {v0, v3}, Lcom/huawei/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 363
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 362
    invoke-virtual {p0, v3, v0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 364
    :cond_2
    const/16 v0, 0x49e8

    if-ne v0, p1, :cond_3

    .line 365
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "receiveSessionModifyResponse modify rejected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 366
    invoke-static {v0, v3}, Lcom/huawei/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 371
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 370
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 373
    :cond_3
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "receiveSessionModifyResponse modify failed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 374
    invoke-static {v0, v3}, Lcom/huawei/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 378
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 377
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0
.end method

.method public onCallDataUsageChanged(J)V
    .locals 5
    .param p1, "addCallDataUsage"    # J

    .prologue
    .line 393
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCallSession.isMultiparty()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isFristConference:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 398
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "isfirstConference"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->getTotalCallDataUsage()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isFristConference:Z

    .line 408
    :goto_0
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    invoke-static {v0, v1}, Lcom/huawei/ims/vt/VTUtils;->setTotalCallDataUsage(J)V

    .line 410
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTotalDataUsage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->changeCallDataUsage(J)V

    .line 412
    return-void

    .line 404
    :cond_1
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "Normal process"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mTotalDataUsage:J

    goto :goto_0
.end method

.method public onCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "onCallSessionHold::session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/CameraController;->setCallSessionHold(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 461
    return-void
.end method

.method public onCallSessionMerged()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->setCurrentSessionMerged()V

    .line 484
    return-void
.end method

.method public onCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "onCallSessionResumed session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/CameraController;->setCallSessionResumed(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 470
    return-void
.end method

.method public onCallSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "onCallSessionStarted session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraController;->setCurrentSessionStarted(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 479
    return-void
.end method

.method public onClosed(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 296
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "onClosed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 299
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/vt/CameraController;->close(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    .line 301
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->cleanPreStatus()V

    .line 302
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/MediaController;->cleanPreStatus()V

    .line 304
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "onClosed end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public onDisconnected(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 291
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 9
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 124
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    const-string/jumbo v6, "onSendSessionModifyRequest"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    const-string/jumbo v6, "fromProfile or requestProfile is null when onSendSessionModifyRequest"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    const-string/jumbo v6, "onSendSessionModifyRequest: video state is audio."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-boolean v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    .line 136
    :cond_2
    iput-object p2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 139
    invoke-direct {p0, p2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 140
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSendSessionModifyRequest pause start, mIsVideoPaused is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 141
    iget-boolean v7, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    if-nez v5, :cond_3

    .line 143
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->pauseVideo()I

    .line 144
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    .line 174
    :cond_3
    :goto_0
    return-void

    .line 146
    :cond_4
    iget-boolean v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    if-eqz v5, :cond_5

    .line 147
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    const-string/jumbo v6, "onSendSessionModifyRequest resume start"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->resumeVideo()I

    .line 149
    iput-boolean v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    .line 153
    iget-object v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v5}, Lcom/huawei/ims/vt/CameraController;->isBgVideoCallShouldResume()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    iget-object v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v5}, Lcom/huawei/ims/vt/CameraController;->getCureentCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    .line 155
    .local v1, "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 157
    .local v0, "callType":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v2

    .line 158
    .local v2, "direction":I
    invoke-static {v2}, Lcom/huawei/ims/vt/RTPController;->resumeRTPStream(I)I

    move-result v4

    .line 159
    .local v4, "result":I
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSendSessionModifyRequest resumeRTP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v0    # "callType":I
    .end local v1    # "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v2    # "direction":I
    .end local v4    # "result":I
    :cond_5
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    const-string/jumbo v6, "onSendSessionModifyRequest changeConnection start"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 166
    const-string/jumbo v5, "ImsVideoCallProviderImpl"

    const-string/jumbo v6, "onSendSessionModifyRequest source video state is the same with destination!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_6
    iget-object v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 171
    .local v3, "newMsg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    invoke-static {v5}, Lcom/huawei/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 172
    .restart local v0    # "callType":I
    iget-object v5, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v5, v3, v0, v7}, Lcom/huawei/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    const/4 v4, 0x0

    .line 183
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-nez v1, :cond_1

    .line 184
    :cond_0
    const-string/jumbo v1, "ImsVideoCallProviderImpl"

    const-string/jumbo v2, "onSendSessionModifyResponse, some information is missing, rejectConnectionTypeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification;->rejectConnectionTypeChange()V

    .line 186
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    const-string/jumbo v1, "ImsVideoCallProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSendSessionModifyResponse responseProfile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 192
    .local v0, "callType":I
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v1

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-ne v1, v0, :cond_2

    .line 193
    const-string/jumbo v1, "ImsVideoCallProviderImpl"

    const-string/jumbo v2, "rejectConnectionTypeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification;->rejectConnectionTypeChange()V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_2
    const-string/jumbo v1, "ImsVideoCallProviderImpl"

    const-string/jumbo v2, "acceptConnectionTypeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1, v0, v4}, Lcom/huawei/ims/ImsCallModification;->acceptConnectionTypeChange(ILjava/util/Map;)V

    goto :goto_0
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetCamera, cameraId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_2

    .line 206
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lcom/huawei/ims/ImsCallSessionImpl;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    const-string/jumbo v1, "onSetCamera, precondition=false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/vt/CameraController;->open(Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/vt/CameraController;->close(Lcom/huawei/ims/ImsCallSessionImpl;Z)V

    goto :goto_0
.end method

.method public onSetDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 258
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetDeviceOrientation, rotation is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/MediaController;->setDeviceOrientation(I)V

    .line 260
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 14
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 227
    const-string/jumbo v8, "ImsVideoCallProviderImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onSetDisplaySurface, surface is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mMediaController:Lcom/huawei/ims/vt/MediaController;

    invoke-virtual {v8, p1}, Lcom/huawei/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;)Z

    move-result v4

    .line 229
    .local v4, "isSurfaceSet":Z
    if-eqz v4, :cond_0

    .line 230
    iget-object v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v8}, Lcom/huawei/ims/vt/CameraController;->getCureentCallSessionImp()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v1

    .line 231
    .local v1, "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 233
    .local v0, "cp":Lcom/android/ims/ImsCallProfile;
    iget v8, v0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v8}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v2

    .line 234
    .local v2, "currentCallType":I
    invoke-static {v2}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v3

    .line 235
    .local v3, "direction":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    .line 236
    .local v5, "isVideoCallType":Z
    if-eqz v5, :cond_0

    .line 237
    invoke-static {v3}, Lcom/huawei/ims/vt/RTPController;->resumeRTPStream(I)I

    move-result v6

    .line 238
    .local v6, "result":I
    const-string/jumbo v11, "ImsVideoCallProviderImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onSetDisplaySurface result "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v6, :cond_2

    move v8, v9

    :goto_0
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0    # "cp":Lcom/android/ims/ImsCallProfile;
    .end local v1    # "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v2    # "currentCallType":I
    .end local v3    # "direction":I
    .end local v5    # "isVideoCallType":Z
    .end local v6    # "result":I
    :cond_0
    if-nez p1, :cond_3

    iget-boolean v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsReportLTEInfo:Z

    if-eqz v8, :cond_3

    .line 244
    iget-object v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    const/16 v9, 0x64

    invoke-virtual {v8, v10, v9, v13}, Lcom/huawei/ims/ImsCallModification;->requestLTEInfo(IILandroid/os/Message;)V

    .line 245
    iput-boolean v10, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsReportLTEInfo:Z

    .line 246
    const-string/jumbo v8, "ImsVideoCallProviderImpl"

    const-string/jumbo v9, "request close report LTE Info"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "cp":Lcom/android/ims/ImsCallProfile;
    .restart local v1    # "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .restart local v2    # "currentCallType":I
    .restart local v3    # "direction":I
    .restart local v5    # "isVideoCallType":Z
    .restart local v6    # "result":I
    :cond_2
    move v8, v10

    .line 238
    goto :goto_0

    .line 247
    .end local v0    # "cp":Lcom/android/ims/ImsCallProfile;
    .end local v1    # "currentCallSession":Lcom/huawei/ims/ImsCallSessionImpl;
    .end local v2    # "currentCallType":I
    .end local v3    # "direction":I
    .end local v5    # "isVideoCallType":Z
    .end local v6    # "result":I
    :cond_3
    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v8}, Lcom/huawei/ims/vt/CameraController;->isParamReady()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsReportLTEInfo:Z

    if-nez v8, :cond_1

    .line 248
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->getLpdcpThreshold()I

    move-result v7

    .line 249
    .local v7, "threshold":I
    iget-object v8, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v8, v9, v7, v13}, Lcom/huawei/ims/ImsCallModification;->requestLTEInfo(IILandroid/os/Message;)V

    .line 250
    iput-boolean v9, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsReportLTEInfo:Z

    .line 251
    const-string/jumbo v8, "ImsVideoCallProviderImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "request open report LTE Info, threshold is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 270
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 221
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetPreviewSurface, surface is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mCameraController:Lcom/huawei/ims/vt/CameraController;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;)V

    .line 223
    return-void
.end method

.method public onSetZoom(F)V
    .locals 0
    .param p1, "arg0"    # F

    .prologue
    .line 277
    return-void
.end method

.method public onUnsolCallModify(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 7
    .param p1, "session"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    const/4 v6, 0x0

    .line 312
    const-string/jumbo v3, "ImsVideoCallProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallTypeChanged,  callModify= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v3, v3, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 314
    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 316
    .local v0, "newVideoState":I
    new-instance v2, Landroid/telecom/VideoProfile;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 318
    .local v2, "vcp":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallModification$CallModify;->findError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    iget v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result v1

    .line 321
    .local v1, "uiError":I
    invoke-virtual {p0, v1, v2, v6}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 340
    .end local v1    # "uiError":I
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallModification$CallModify;->modifyByTimeOut()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 324
    const-string/jumbo v3, "ImsVideoCallProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifyByTimeOut , modify_reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget v3, p2, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result v1

    .line 326
    .restart local v1    # "uiError":I
    invoke-virtual {p0, v1, v2, v6}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 330
    .end local v1    # "uiError":I
    :cond_2
    iput-object v2, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 332
    invoke-virtual {p0, v2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 334
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    const-string/jumbo v3, "ImsVideoCallProviderImpl"

    const-string/jumbo v4, "onCallTypeChanged, videostate=audio"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->mIsVideoPaused:Z

    goto :goto_0
.end method

.method public sendCameraStatus(Z)V
    .locals 4
    .param p1, "hasFailed"    # Z

    .prologue
    .line 280
    const-string/jumbo v1, "ImsVideoCallProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCameraStatus, hasFailed is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 284
    .local v0, "status":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    .line 285
    return-void

    .line 282
    .end local v0    # "status":I
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "status":I
    goto :goto_0
.end method
