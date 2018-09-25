.class public Lcom/huawei/ims/vt/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lcom/huawei/ims/vt/ImsMedia$IMediaListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/MediaController$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALL_ID:Ljava/lang/String; = "-1"

.field private static final HW_CMCCIOT_ON:Ljava/lang/String; = "ro.config.hw_cmcciot"

.field private static TAG:Ljava/lang/String;

.field private static mIsCmccIOT:Z

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/huawei/ims/vt/MediaController;


# instance fields
.field private isAlreadyExist:Z

.field private mCallId:Ljava/lang/String;

.field private mMedia:Lcom/huawei/ims/vt/ImsMedia;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSetSurface:Landroid/view/Surface;

.field private mSurface:Landroid/view/Surface;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string/jumbo v0, "MediaController"

    sput-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "ro.config.hw_cmcciot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/MediaController;->mIsCmccIOT:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/MediaController;->mLock:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/huawei/ims/vt/ImsMedia;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/MediaController;->isAlreadyExist:Z

    .line 233
    new-instance v0, Lcom/huawei/ims/vt/MediaController$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/MediaController$1;-><init>(Lcom/huawei/ims/vt/MediaController;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 67
    iput-object p2, p0, Lcom/huawei/ims/vt/MediaController;->mMedia:Lcom/huawei/ims/vt/ImsMedia;

    .line 68
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mMedia:Lcom/huawei/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/huawei/ims/vt/ImsMedia;->setMediaListener(Lcom/huawei/ims/vt/ImsMedia$IMediaListener;)V

    .line 70
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/huawei/ims/vt/MediaController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 75
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/vt/MediaController;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/MediaController;->sInstance:Lcom/huawei/ims/vt/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 58
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
    .line 50
    sget-object v1, Lcom/huawei/ims/vt/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->sInstance:Lcom/huawei/ims/vt/MediaController;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/huawei/ims/vt/MediaController;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/vt/MediaController;-><init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMedia;)V

    sput-object v0, Lcom/huawei/ims/vt/MediaController;->sInstance:Lcom/huawei/ims/vt/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 55
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setInitBitRate()V
    .locals 2

    .prologue
    .line 148
    sget-boolean v0, Lcom/huawei/ims/vt/MediaController;->mIsCmccIOT:Z

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setInitMaxBitRate true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setInitMaxBitRate(Z)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setInitMaxBitRate false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setInitMaxBitRate(Z)V

    goto :goto_0
.end method


# virtual methods
.method public cleanPreStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    .line 45
    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    .line 46
    return-void
.end method

.method public onDataUsageChanged(IIJJ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "mediaId"    # I
    .param p3, "uplink"    # J
    .param p5, "downlink"    # J

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-static {p1}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getCallVideoProvider(I)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 192
    sget-object v3, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDataUsageChanged: Call session video provider is null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 195
    :cond_0
    iput-boolean v4, p0, Lcom/huawei/ims/vt/MediaController;->isAlreadyExist:Z

    .line 196
    invoke-static {p1}, Lcom/huawei/ims/vt/ImsVideoGlobals;->getCallVideoProvider(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 197
    .local v2, "videoProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    .local v0, "callNum":I
    if-lez v0, :cond_4

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 201
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 200
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v3, p3, p4}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 206
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/vt/MediaController;->isAlreadyExist:Z

    .line 214
    .end local v1    # "i":I
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/huawei/ims/vt/MediaController;->isAlreadyExist:Z

    if-nez v3, :cond_6

    .line 215
    const-string/jumbo v3, "-1"

    iput-object v3, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    .line 217
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 218
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    .end local v1    # "i":I
    :cond_4
    sget-object v3, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "callsession is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    .restart local v1    # "i":I
    :cond_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    .line 222
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v3, p3, p4}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 227
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/huawei/ims/vt/MediaController;->mCallId:Ljava/lang/String;

    const-string/jumbo v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 228
    sget-object v3, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "callsession is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_7
    return-void
.end method

.method public onDisplayModeEvent()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onPeerResolutionChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 173
    return-void
.end method

.method public onVideoQualityEvent(I)V
    .locals 0
    .param p1, "videoQuality"    # I

    .prologue
    .line 179
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 126
    const-string/jumbo v3, "ro.config.phoneland"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    .local v0, "isLand":Z
    if-nez v0, :cond_0

    .line 128
    invoke-static {p1, v4}, Lcom/huawei/vtproxy/ImsThinClient;->setDeviceOrientation(IZ)I

    .line 145
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string/jumbo v3, "persist.sys.vt.self_adpater"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 131
    .local v1, "isVtSelfAdapter":Z
    xor-int/lit8 v2, v1, 0x1

    .line 132
    .local v2, "needFixLayout":Z
    sget-object v3, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set orientation need fix layout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-boolean v3, Lcom/huawei/ims/ImsCallUtils;->IS_TABLET:Z

    if-eqz v3, :cond_1

    .line 139
    const/4 v2, 0x1

    .line 140
    .local v2, "needFixLayout":Z
    sget-object v3, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "fix layout when device is tablet"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v2    # "needFixLayout":Z
    :cond_1
    invoke-static {p1, v2}, Lcom/huawei/vtproxy/ImsThinClient;->setDeviceOrientation(IZ)I

    goto :goto_0
.end method

.method public setDisplaySurface()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDisplaySurface after params ready"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mSurface is null when setDisplaySurface after params ready"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v2

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_1

    .line 112
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start to setFarEndSurface and startRemotePreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    .line 114
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setFarEndSurface(Landroid/view/Surface;)I

    .line 115
    invoke-direct {p0}, Lcom/huawei/ims/vt/MediaController;->setInitBitRate()V

    .line 116
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->showRmtVideo()I

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_1
    return v2
.end method

.method public setDisplaySurface(Landroid/view/Surface;)Z
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDisplaySurface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-nez p1, :cond_0

    .line 82
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideRmtVideo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->hideRmtVideo()I

    .line 84
    iput-object v2, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    .line 85
    iput-object v2, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    .line 86
    return v3

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaController;->mSurface:Landroid/view/Surface;

    .line 91
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->getInstance()Lcom/huawei/ims/vt/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraController;->isParamReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/huawei/ims/vt/MediaController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start to setFarEndSurface and startRemotePreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaController;->mPreSetSurface:Landroid/view/Surface;

    .line 94
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsThinClient;->setFarEndSurface(Landroid/view/Surface;)I

    .line 95
    invoke-direct {p0}, Lcom/huawei/ims/vt/MediaController;->setInitBitRate()V

    .line 96
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->showRmtVideo()I

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_1
    return v3
.end method
