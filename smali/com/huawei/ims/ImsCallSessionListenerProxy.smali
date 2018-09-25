.class public Lcom/huawei/ims/ImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.source "ImsCallSessionListenerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionListenerProxy"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mListener:Lcom/android/ims/internal/IImsCallSessionListener;


# direct methods
.method static synthetic -wrap0(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .prologue
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->cleanup()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;-><init>()V

    .line 49
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "Constructor: start handler thread for callbacks."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .prologue
    .line 555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 556
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 557
    :cond_0
    return-void

    .line 560
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 529
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "cleanup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 533
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 534
    iput-object v2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 536
    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 547
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 478
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 480
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 476
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 497
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 499
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 500
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 511
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 513
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionDeflectFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 243
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 245
    return-void
.end method

.method public callSessionDeflected(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 236
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 238
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 169
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 171
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 184
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 186
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 191
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 193
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 206
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 208
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 254
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 256
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 257
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$9;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 267
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 269
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 274
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 276
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 277
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$10;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 287
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 289
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 294
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 296
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$11;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 307
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 309
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 485
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 487
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 401
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 403
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 404
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;)V

    .line 415
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 417
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 427
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 429
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 430
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$17;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 441
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 443
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 377
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 379
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 380
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 391
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 393
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "isMultiParty"    # Z

    .prologue
    .line 552
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 78
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 81
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 93
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 95
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 488
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 490
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 332
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 334
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 335
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$13;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 345
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 347
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 351
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 353
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 354
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$14;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 364
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 366
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 313
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 315
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 316
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 326
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 328
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reason"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 58
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 60
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 71
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 73
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 100
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 103
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$3;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 115
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 117
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$5;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 161
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 164
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reason"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 122
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 124
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 136
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 138
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "ttyMode"    # I

    .prologue
    .line 213
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 215
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 216
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;I)V

    .line 227
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 229
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 468
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 470
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 450
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 452
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 453
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$18;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 463
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 465
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 144
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 516
    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    const-string/jumbo v2, "dispose"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 519
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V

    .line 525
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 539
    const-string/jumbo v0, "ImsCallSessionListenerProxy"

    const-string/jumbo v1, "posting to handler"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    :cond_0
    return-void
.end method
