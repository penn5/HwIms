.class public Lcom/huawei/ims/ImsCallModification;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsCallModification$CallModify;,
        Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;,
        Lcom/huawei/ims/ImsCallModification$PauseState;
    }
.end annotation


# static fields
.field static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "VideoCall_ImsCallModification"

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8


# instance fields
.field private callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

.field private mAvpRetryAllowed:Z

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field mHandler:Landroid/os/Handler;

.field public mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

.field public mIndex:I

.field private mIsLocallyPaused:Z

.field private mMultiTaskRetryCount:I

.field private mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

.field private mPrevVideoCallType:I


# direct methods
.method static synthetic -get0(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$CallModify;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    return-object v0
.end method

.method static synthetic -get1(Lcom/huawei/ims/ImsCallModification;)I
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;

    .prologue
    iget v0, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$PauseState;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/huawei/ims/ImsCallModification;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    return p1
.end method

.method static synthetic -set1(Lcom/huawei/ims/ImsCallModification;I)I
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/huawei/ims/ImsCallModification;)Z
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->shouldRetryVideoPause()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/huawei/ims/ImsCallModification;I)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "rilCallType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/huawei/ims/ImsCallModification;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallModification;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->processPendingVTMultitask()V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V
    .locals 2
    .param p1, "imsCallSessionImpl"    # Lcom/huawei/ims/ImsCallSessionImpl;
    .param p2, "senderRxr"    # Lcom/huawei/ims/ImsRIL;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallModification;->mIndex:I

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 50
    iput v1, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 61
    sget-object v0, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    .line 64
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 72
    const-string/jumbo v0, "ImsCallModification instance created "

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 75
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 76
    new-instance v0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;-><init>(Lcom/huawei/ims/ImsCallModification;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method private clearPendingVTMultiTask()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearPendingVTMultiTask imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    .line 249
    return-void
.end method

.method private createAndSendMultiTaskRequest(I)V
    .locals 3
    .param p1, "rilCallType"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/huawei/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    .line 102
    return-void
.end method

.method public static hasError(Lcom/huawei/ims/ImsCallModification$CallModify;)Z
    .locals 1
    .param p0, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification$CallModify;->findError()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOldAndNewPauseRequestSame()Z
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-eqz v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 238
    return v0

    .line 240
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallModification$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 242
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOldAndNewPauseRequestSame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 243
    return v0

    .line 241
    :cond_1
    iget-boolean v1, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallModification$PauseState;->RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVTMultitaskRequest(I)Z
    .locals 2
    .param p1, "callType"    # I

    .prologue
    const/4 v0, 0x1

    .line 80
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 81
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v1, :cond_0

    .line 401
    const-string/jumbo v1, "callModifyRequest is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x0

    return v1

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 406
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 405
    invoke-static {v1, v2, p1}, Lcom/huawei/ims/ImsCallUtils;->isVTUpgradeCallType(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    const/4 v0, 0x1

    .line 411
    :cond_1
    :goto_0
    return v0

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-ne p1, v1, :cond_1

    .line 409
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 582
    const-string/jumbo v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 586
    const-string/jumbo v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .locals 7
    .param p1, "newMsg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/huawei/ims/ImsCallUtils;->isValidRilModifyCallType(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifyCallInitiate not a Valid RilCallType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 381
    return-void

    .line 384
    :cond_0
    new-instance v2, Lcom/huawei/ims/CallDetails;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v4

    .line 385
    invoke-static {p3}, Lcom/huawei/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    .line 384
    invoke-direct {v2, p2, v4, v5}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 386
    .local v2, "destCallDetails":Lcom/huawei/ims/CallDetails;
    iget v3, p0, Lcom/huawei/ims/ImsCallModification;->mIndex:I

    .line 388
    .local v3, "rilCallIndex":I
    new-instance v1, Lcom/huawei/ims/CallDetails;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v4

    .line 389
    iget-object v5, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v5

    const/4 v6, 0x0

    .line 388
    invoke-direct {v1, v4, v5, v6}, Lcom/huawei/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 390
    .local v1, "currCallDetails":Lcom/huawei/ims/CallDetails;
    new-instance v0, Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;I)V

    .line 393
    .local v0, "callModify":Lcom/huawei/ims/ImsCallModification$CallModify;
    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 394
    iget-object v4, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v4, p1, v0}, Lcom/huawei/ims/ImsRIL;->modifyCallInitiate(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 395
    return-void
.end method

.method private pendingPauseStatetoRilCallType()I
    .locals 3

    .prologue
    .line 105
    const/16 v0, 0xa

    .line 106
    .local v0, "rilCallType":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallModification$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_1

    .line 107
    const/4 v0, 0x4

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallModification$PauseState;->RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_0

    .line 110
    iget v0, p0, Lcom/huawei/ims/ImsCallModification;->mPrevVideoCallType:I

    goto :goto_0
.end method

.method private processPendingVTMultitask()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processPendingVTMultitask mPendingVTMultitask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string/jumbo v0, "Old and new Pause Request is Same so clearing Pending VT multitask"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingVTMultiTask()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v0, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->pendingPauseStatetoRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    .line 263
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingVTMultiTask()V

    goto :goto_0

    .line 265
    :cond_2
    const-string/jumbo v0, "processPendingVTMultitask callModifyRequest not null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reValidateCallModify(I)Z
    .locals 11
    .param p1, "newCallType"    # I

    .prologue
    const/4 v10, 0x3

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reValidateCallModify newCallType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 204
    iget-object v8, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 209
    .local v0, "currCallType":I
    const/4 v8, 0x2

    if-ne v8, p1, :cond_1

    const/4 v7, 0x1

    .line 215
    .local v7, "voiceCallModify":Z
    :goto_0
    if-ne v10, p1, :cond_3

    .line 216
    if-ne v10, v0, :cond_2

    const/4 v6, 0x1

    .line 218
    .local v6, "videoCallModify":Z
    :goto_1
    iget-object v8, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v1

    .line 220
    .local v1, "currentCallState":Lcom/huawei/ims/DriverCallIms$State;
    sget-object v8, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    if-eq v8, v1, :cond_4

    .line 221
    sget-object v8, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v8, v1, :cond_5

    const/4 v5, 0x1

    .line 223
    .local v5, "isVideoRingtoneState":Z
    :goto_2
    iget-object v8, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 224
    .local v2, "index":I
    if-ltz v2, :cond_6

    const/4 v3, 0x1

    .line 225
    .local v3, "isIndexValid":Z
    :goto_3
    if-eqz v3, :cond_7

    .line 226
    if-nez v7, :cond_0

    .line 225
    if-eqz v6, :cond_7

    .line 226
    :cond_0
    move v4, v5

    .line 227
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reValidateCallModify currCallType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 228
    const-string/jumbo v9, " index="

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 228
    const-string/jumbo v9, " voiceCallModify="

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 229
    const-string/jumbo v9, " videoCallModify="

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 229
    const-string/jumbo v9, " isVideoRingtoneState="

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 231
    return v4

    .line 209
    .end local v1    # "currentCallState":Lcom/huawei/ims/DriverCallIms$State;
    .end local v2    # "index":I
    .end local v3    # "isIndexValid":Z
    .end local v5    # "isVideoRingtoneState":Z
    .end local v6    # "videoCallModify":Z
    .end local v7    # "voiceCallModify":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "voiceCallModify":Z
    goto :goto_0

    .line 216
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "videoCallModify":Z
    goto :goto_1

    .line 215
    .end local v6    # "videoCallModify":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "videoCallModify":Z
    goto :goto_1

    .line 220
    .restart local v1    # "currentCallState":Lcom/huawei/ims/DriverCallIms$State;
    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "isVideoRingtoneState":Z
    goto :goto_2

    .line 221
    .end local v5    # "isVideoRingtoneState":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "isVideoRingtoneState":Z
    goto :goto_2

    .line 224
    .restart local v2    # "index":I
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isIndexValid":Z
    goto :goto_3

    .line 225
    :cond_7
    const/4 v4, 0x0

    .local v4, "isValid":Z
    goto :goto_4
.end method

.method private shouldRetryVideoPause()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 252
    iget v1, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private triggerOrQueueVTMultitask(I)V
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerOrQueueVTMultitask callType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " conn= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 88
    .local v0, "isPauseRequested":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

    :goto_1
    iput-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallModification$PauseState;

    .line 89
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->processPendingVTMultitask()V

    .line 92
    :cond_0
    return-void

    .line 86
    .end local v0    # "isPauseRequested":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isPauseRequested":Z
    goto :goto_0

    .line 88
    :cond_2
    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;

    goto :goto_1
.end method

.method private updatePreviousVTCallType()V
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 326
    .local v0, "callType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 327
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 329
    :cond_0
    :goto_0
    iput v0, p0, Lcom/huawei/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating mPrevVideoCallType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/ImsCallModification;->mPrevVideoCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 332
    :cond_1
    return-void

    .line 328
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private validateCanModifyConnectionType(Landroid/os/Message;I)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I

    .prologue
    const/4 v8, 0x0

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCanModifyConnectionType newCallType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 118
    iget-object v6, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 119
    .local v0, "currCallType":I
    if-ne p2, v0, :cond_0

    const/4 v5, 0x1

    .line 121
    .local v5, "modifyToCurrCallType":Z
    :goto_0
    iget-object v6, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "index":I
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    .line 123
    .local v3, "isIndexValid":Z
    :goto_1
    if-eqz v3, :cond_2

    xor-int/lit8 v4, v5, 0x1

    .line 125
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCanModifyConnectionType currCallType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 126
    const-string/jumbo v7, " index="

    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 126
    const-string/jumbo v7, " modifyToCurrCallType="

    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 127
    if-nez p1, :cond_3

    return v4

    .line 119
    .end local v2    # "index":I
    .end local v3    # "isIndexValid":Z
    .end local v5    # "modifyToCurrCallType":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "modifyToCurrCallType":Z
    goto :goto_0

    .line 122
    .restart local v2    # "index":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isIndexValid":Z
    goto :goto_1

    .line 123
    :cond_2
    const/4 v4, 0x0

    .local v4, "isValid":Z
    goto :goto_2

    .line 129
    .end local v4    # "isValid":Z
    :cond_3
    if-nez v4, :cond_4

    .line 130
    if-eqz v5, :cond_5

    const/4 v1, 0x0

    .line 132
    :goto_3
    invoke-static {p1, v8, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v6

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 135
    :cond_4
    return v4

    .line 131
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v6, "Can\'t modify call."

    invoke-direct {v1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .local v1, "exception":Ljava/lang/Exception;
    goto :goto_3
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;)V
    .locals 4
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 421
    const-string/jumbo v0, "VideoCall_ImsCallModification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Confirming call type change request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification;->isValidCallModifyConfirmRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM called with invalid calltype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification;->rejectConnectionTypeChange()V

    .line 427
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iput p1, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 432
    if-eqz p2, :cond_1

    .line 433
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    invoke-virtual {v0, p2}, Lcom/huawei/ims/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v0, v3, v1}, Lcom/huawei/ims/ImsRIL;->modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 438
    iput-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 441
    :cond_2
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "changeConnectionType  newCallType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/huawei/ims/ImsCallModification;->mIndex:I

    .line 342
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsCallModification;->isVTMultitaskRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsCallModification;->triggerOrQueueVTMultitask(I)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 349
    .local v2, "newMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v3, :cond_2

    .line 350
    invoke-direct {p0, v2, p2}, Lcom/huawei/ims/ImsCallModification;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-direct {p0, v2, p2, p3}, Lcom/huawei/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 354
    :cond_2
    const-string/jumbo v3, "VideoCall_ImsCallModification"

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    iget-object v5, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string/jumbo v0, "Pending callModifyRequest so not sending modify request down"

    .line 360
    .local v0, "errorStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, "ex":Ljava/lang/RuntimeException;
    if-eqz p1, :cond_0

    .line 362
    invoke-static {p1, v6, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 363
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public clearPendingModify()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearPendingModify imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 275
    return-void
.end method

.method public isAvpRetryAllowed()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallModification;->mAvpRetryAllowed:Z

    return v0
.end method

.method public isLocallyPaused()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallModification;->mIsLocallyPaused:Z

    return v0
.end method

.method public onReceivedModifyCall(Lcom/huawei/ims/ImsCallModification$CallModify;)V
    .locals 5
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    const/4 v4, 0x0

    .line 144
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivedCallModify("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    .line 149
    .local v0, "ret":Z
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallModification$CallModify;->findError()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallModification$CallModify;->isSameModify(Lcom/huawei/ims/ImsCallModification$CallModify;)Z

    move-result v1

    .line 150
    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification$CallModify;->findError()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 150
    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget v2, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    iput v2, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    .line 155
    const/4 v0, 0x1

    .line 193
    .end local v0    # "ret":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 197
    :cond_1
    invoke-static {p1}, Lcom/huawei/ims/ImsCallModification;->hasError(Lcom/huawei/ims/ImsCallModification$CallModify;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 200
    :cond_2
    return-void

    .line 157
    .restart local v0    # "ret":Z
    :cond_3
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    const-string/jumbo v3, ", Received Request:"

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :cond_4
    iget-object v1, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsCallModification;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v0

    .line 164
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRIL;->isSupportVideoRingTones()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    if-nez v0, :cond_6

    iget-object v1, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallModification;->reValidateCallModify(I)Z

    move-result v0

    .line 166
    .end local v0    # "ret":Z
    :goto_1
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    const-string/jumbo v2, "CallModify received by video ring tone."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverCallIms$State;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 168
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_5

    .line 169
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 170
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    const-string/jumbo v2, "mock call state change, notify CallStateRegistrants!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_5
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v1, :cond_7

    .line 174
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 182
    :goto_2
    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification;->rejectConnectionTypeChange()V

    goto/16 :goto_0

    .line 165
    .restart local v0    # "ret":Z
    :cond_6
    const/4 v0, 0x1

    .local v0, "ret":Z
    goto :goto_1

    .line 176
    .end local v0    # "ret":Z
    :cond_7
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_2
.end method

.method public rejectConnectionTypeChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 449
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-nez v1, :cond_0

    .line 450
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    const-string/jumbo v2, "rejectConnectionTypeChange callModifyRequest is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 454
    :cond_0
    new-instance v0, Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mImsCallSessionImpl:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallDetails()Lcom/huawei/ims/CallDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget v2, v2, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;I)V

    .line 456
    .local v0, "callModify":Lcom/huawei/ims/ImsCallModification$CallModify;
    const-string/jumbo v1, "VideoCall_ImsCallModification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rejecting Change request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " keep as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, v4, v0}, Lcom/huawei/ims/ImsRIL;->modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    .line 459
    iput-object v4, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    .line 460
    return-void
.end method

.method public requestLTEInfo(IILandroid/os/Message;)V
    .locals 1
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsRIL;->requestGetLTEInfo(IILandroid/os/Message;)V

    .line 374
    :cond_0
    return-void
.end method

.method public update(Lcom/huawei/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lcom/huawei/ims/DriverCallIms;

    .prologue
    const/4 v1, 0x0

    .line 283
    if-nez p1, :cond_0

    .line 284
    const-string/jumbo v0, "update, dc is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->loge(Ljava/lang/String;)V

    .line 285
    return-void

    .line 292
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 296
    :cond_1
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    const-string/jumbo v0, "videocall: update: Not a videocall CASE"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingVTMultiTask()V

    .line 299
    iput v1, p0, Lcom/huawei/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 300
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p1, Lcom/huawei/ims/DriverCallIms;->callDetails:Lcom/huawei/ims/CallDetails;

    iget v0, v0, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification;->callModifyRequest:Lcom/huawei/ims/ImsCallModification$CallModify;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    if-ne v0, v1, :cond_3

    .line 306
    const-string/jumbo v0, "videocall update: current call type is same as callModifyRequest"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallModification;->log(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 311
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification;->updatePreviousVTCallType()V

    .line 316
    return-void
.end method
