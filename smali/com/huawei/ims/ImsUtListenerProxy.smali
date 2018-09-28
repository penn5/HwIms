.class public Lcom/huawei/ims/ImsUtListenerProxy;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUtListenerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtListenerProxy"


# instance fields
.field public mListener:Lcom/android/ims/internal/IImsUtListener;


# direct methods
.method static synthetic -wrap0(Lcom/huawei/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsUtListenerProxy;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 187
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 188
    :cond_0
    return-void

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string/jumbo v0, "ImsUtListenerProxy"

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

    .line 183
    return-void
.end method


# virtual methods
.method startThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "ImsUtListenerProxyThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 178
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    return-void
.end method

.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    .line 113
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 115
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsUtListenerProxy$5;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    .line 126
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 128
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    .line 136
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 138
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsUtListenerProxy$6;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V

    .line 149
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 151
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    .line 159
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 161
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 162
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsUtListenerProxy$7;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V

    .line 172
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 174
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 72
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsUtListenerProxy$3;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 83
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 85
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 90
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 92
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsUtListenerProxy$4;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 103
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 105
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .prologue
    .line 47
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 49
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsUtListenerProxy$2;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 60
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 62
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 2
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I

    .prologue
    .line 27
    invoke-static {}, Lcom/huawei/ims/ImsUtListenerProxy;->checkAccessPermission()V

    .line 29
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_0

    .line 30
    new-instance v0, Lcom/huawei/ims/ImsUtListenerProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsUtListenerProxy$1;-><init>(Lcom/huawei/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I)V

    .line 40
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->startThread(Ljava/lang/Runnable;)V

    .line 42
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
