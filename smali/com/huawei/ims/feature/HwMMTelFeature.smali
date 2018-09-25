.class public Lcom/huawei/ims/feature/HwMMTelFeature;
.super Landroid/telephony/ims/feature/MMTelFeature;
.source "HwMMTelFeature.java"


# static fields
.field private static final EVENT_SIM_STATE_CHANGED:I = 0x2

.field private static final LAST_CALL_TYPE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HwMMTelFeature"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImsPhoneId:I

.field private mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

.field private mSessionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/huawei/ims/ImsServiceSub;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    const/4 v3, 0x2

    .line 41
    invoke-direct {p0}, Landroid/telephony/ims/feature/MMTelFeature;-><init>()V

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSessionIds:Ljava/util/List;

    .line 42
    invoke-virtual {p0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature;->setContext(Landroid/content/Context;)V

    .line 44
    iput-object p3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    .line 45
    iput p2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSlotId:I

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HwMMTelFeature constructor: mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    .line 49
    .local v0, "isMultiSims":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HwMMTelFeature constructor: isMultiSims = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    const-string/jumbo v2, ", isDualIms = "

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 51
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 52
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v1

    iput v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 53
    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSlotId:I

    iget v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-ne v1, v2, :cond_0

    .line 54
    invoke-virtual {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HwMMTelFeature constructor: setFeatureState ready! mImsPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/feature/HwMMTelFeature;->initSubscriptionStatus()V

    .line 63
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 59
    const-string/jumbo v1, "HwMMTelFeature constructor: setFeatureState ready!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/huawei/ims/feature/HwMMTelFeature$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/feature/HwMMTelFeature$1;-><init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method private handleSimStateChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 108
    .local v1, "mNumPhones":I
    const/4 v2, 0x0

    .line 109
    .local v2, "mPhoneChanged":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSimStateChanged: NumPhones:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    const-string/jumbo v4, " Ims PhoneID:"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    iget v4, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 112
    .local v0, "default4GSlotId":I
    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-eq v3, v0, :cond_0

    .line 113
    iput v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 114
    const/4 v2, 0x1

    .line 116
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSimStateChanged: mPhoneChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 118
    if-eqz v2, :cond_1

    .line 123
    iget-object v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    iget v4, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsServiceSub;->registerForPhoneId(I)V

    .line 124
    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSlotId:I

    iget v4, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-eq v3, v4, :cond_2

    .line 125
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    goto :goto_0
.end method

.method private initSubscriptionStatus()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/huawei/ims/feature/HwMMTelFeature;->createHandler()V

    .line 92
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 93
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const-string/jumbo v1, "initSubscriptionStatus: registered for EVENT_SIM_STATE_CHANGED"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 103
    :goto_1
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "UiccController getInstance Exception!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-string/jumbo v1, "initSubscriptionStatus: Not multi-sim..."

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 100
    iput-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 101
    iput-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HwMMTelFeature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HwMMTelFeature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addRegistrationListener: IImsRegistrationListener listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSessionIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid SessionId, SessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mImsServiceSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 181
    return-object v2

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsServiceSub;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSessionIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid SessionId, SessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mImsServiceSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 191
    return-object v2

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsServiceSub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method public endSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSessionIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EndSession:: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSessionIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 217
    const-string/jumbo v0, "GetConfigInterface:: mImsServiceSub is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 218
    return-object v1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getConfigInterface()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 246
    const-string/jumbo v0, "GetEcbmInterface:: mImsServiceSub is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 247
    return-object v1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallType()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 279
    const-string/jumbo v0, "GetLastCallType:: mImsServiceSub is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 280
    const/4 v0, -0x1

    return v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getLastCallType()I

    move-result v0

    return v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1

    .prologue
    .line 266
    const-string/jumbo v0, "IImsMultiEndpoint return null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSessionIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid arguments, SessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mImsServiceSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 200
    return-object v2

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsServiceSub;->getPendingSession(ILjava/lang/String;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 208
    const-string/jumbo v0, "GetUtInterface:: mImsServiceSub is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 209
    return-object v1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->getUtInterface()Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    const-string/jumbo v0, "Unknown msg!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const-string/jumbo v0, "Received event: EVENT_SIM_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature;->handleSimStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public isConnected(II)Z
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public onFeatureRemoved()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeRegistrationListener: IImsRegistrationListener listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v1, :cond_0

    .line 255
    const-string/jumbo v1, "SetUiTTYMode:: mImsServiceSub is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 256
    return-void

    .line 259
    :cond_0
    const-string/jumbo v1, "setUiTTYMode"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "serviceId":I
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v1, v0, p1, p2}, Lcom/huawei/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 262
    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v1, :cond_0

    .line 136
    const-string/jumbo v1, "StartSession:: mImsServiceSub is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 137
    return v0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lcom/huawei/ims/ImsServiceSub;->getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    .line 140
    if-lez v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSessionIds:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StartSession return sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 145
    return v0
.end method

.method public turnOffIms()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 236
    const-string/jumbo v0, "TurnOffIms:: mImsServiceSub is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 237
    return-void

    .line 239
    :cond_0
    const-string/jumbo v0, "turnOffIms"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->turnOffIms()V

    .line 241
    return-void
.end method

.method public turnOnIms()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    if-nez v0, :cond_0

    .line 226
    const-string/jumbo v0, "TurnOnIms:: mImsServiceSub is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 227
    return-void

    .line 229
    :cond_0
    const-string/jumbo v0, "turnOnIms"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsServiceSub:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceSub;->turnOnIms()V

    .line 231
    return-void
.end method
