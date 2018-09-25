.class public Lcom/huawei/ims/ImsEcbmImpl;
.super Lcom/android/ims/internal/IImsEcbm$Stub;
.source "ImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I = 0x1

.field private static final EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImsEcbmImpl"


# instance fields
.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method static synthetic -get0(Lcom/huawei/ims/ImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsEcbmImpl;

    .prologue
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/huawei/ims/ImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsEcbmImpl;
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;
    .param p2, "isEntered"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 4
    .param p1, "ci"    # Lcom/huawei/ims/ImsRIL;

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    .line 23
    new-instance v0, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;

    invoke-direct {v0, p0, v3}, Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;-><init>(Lcom/huawei/ims/ImsEcbmImpl;Lcom/huawei/ims/ImsEcbmImpl$ImsEcbmImplHandler;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lcom/huawei/ims/ImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 28
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 31
    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 54
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 55
    :cond_0
    return-void

    .line 58
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;
    .param p2, "isEntered"    # Z

    .prologue
    .line 69
    new-instance v0, Lcom/huawei/ims/ImsEcbmImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/huawei/ims/ImsEcbmImpl$1;-><init>(Lcom/huawei/ims/ImsEcbmImpl;ZLcom/android/ims/internal/IImsEcbmListener;)V

    .line 83
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "ImsEcbmImplEcbmCallBackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 85
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/huawei/ims/ImsEcbmImpl;->checkAccessPermission()V

    .line 48
    iget-object v0, p0, Lcom/huawei/ims/ImsEcbmImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 49
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;

    .prologue
    .line 39
    invoke-static {}, Lcom/huawei/ims/ImsEcbmImpl;->checkAccessPermission()V

    .line 41
    iput-object p1, p0, Lcom/huawei/ims/ImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    .line 42
    return-void
.end method
