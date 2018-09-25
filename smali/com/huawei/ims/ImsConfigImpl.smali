.class public Lcom/huawei/ims/ImsConfigImpl;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;,
        Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;
    }
.end annotation


# static fields
.field protected static final CODE_IS_UNSUPPORT_MMI_CODE:I = 0xbb9

.field private static final DEBUG:Z = false

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field private static final EVENT_QUERY_VT_CALL_QUALITY:I = 0x2

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x3

.field private static final EVENT_SET_VT_CALL_QUALITY:I = 0x1

.field private static final IMS_CONFIG_SERVICE_NAME:Ljava/lang/String; = "ims_config"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConfigImpl"

.field private static volatile instance:Lcom/huawei/ims/ImsConfigImpl;

.field private static mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p0, "-this"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/huawei/ims/ImsConfigImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->mLock:Ljava/lang/Object;

    .line 41
    sput-object v1, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    .line 43
    sput-object v1, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    .line 29
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 55
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "ImsConfigImpl::ImsConfigImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method protected static checkAccessPermission()V
    .locals 3

    .prologue
    .line 622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 623
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 624
    :cond_0
    return-void

    .line 627
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 205
    const-string/jumbo v0, "AsyncResult is null."

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 213
    :cond_0
    const-string/jumbo v0, "getImsConfigListener returns null"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 214
    return-object v1

    .line 206
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 208
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    .line 208
    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    return-object v0
.end method

.method static getInstance()Lcom/huawei/ims/ImsConfigImpl;
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 64
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/huawei/ims/ImsConfigImpl;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/huawei/ims/ImsConfigImpl;

    invoke-direct {v0}, Lcom/huawei/ims/ImsConfigImpl;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    .line 71
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v2, "add ims_config service"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v0, "ims_config"

    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 73
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v0

    new-array v0, v0, [Lcom/huawei/ims/HwImsConfigImpl;

    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 80
    :goto_0
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 77
    :cond_1
    const-string/jumbo v0, "instance is already exist!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 199
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 200
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "() is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 635
    const-string/jumbo v0, "ImsConfigImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 639
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 156
    if-eqz p1, :cond_2

    .line 158
    :try_start_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    .line 159
    .local v1, "status":I
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 160
    const/4 v0, -0x1

    .line 162
    .local v0, "result":I
    :goto_1
    invoke-interface {p1, v1, v0}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V

    .line 169
    .end local v0    # "result":I
    .end local v1    # "status":I
    :goto_2
    return-void

    .line 158
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 161
    .restart local v1    # "status":I
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "result":I
    goto :goto_1

    .line 163
    .end local v0    # "result":I
    .end local v1    # "status":I
    :catch_0
    move-exception v2

    .line 164
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetVideoCallQualityDone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 167
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v3, "onGetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v3}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 185
    if-eqz p1, :cond_1

    .line 187
    :try_start_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    .line 188
    .local v1, "status":I
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 189
    .local v0, "f":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->-get0(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v3

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->-get1(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v4

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->-get2(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5, v1}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "f":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    .end local v1    # "status":I
    :goto_1
    return-void

    .line 187
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v2

    .line 191
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetFeatureResponseDone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v3, "onSetFeatureResponseDone listener is not valid !!!"

    invoke-static {v3}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 172
    if-eqz p1, :cond_1

    .line 174
    :try_start_0
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 175
    .local v0, "status":I
    invoke-interface {p1, v0}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "status":I
    :goto_1
    return-void

    .line 174
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetVideoCallQualityDone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v2, "onSetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v2}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # Z

    .prologue
    .line 606
    const-string/jumbo v0, "getBoolFromSP"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method getBsfAddrFromSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const-string/jumbo v0, "getBsfAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x0

    return-object v0
.end method

.method getCallWaitingMode()I
    .locals 1

    .prologue
    .line 455
    const-string/jumbo v0, "getCallWaitingMode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 456
    const/4 v0, -0x1

    return v0
.end method

.method getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    .locals 1

    .prologue
    .line 581
    const-string/jumbo v0, "getCallWaitingSource"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigInterface(Lcom/huawei/ims/ImsServiceSub;I)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 3
    .param p1, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;
    .param p2, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 89
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "getConfigInterface - imsServiceSub or context is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v2

    .line 94
    :cond_1
    invoke-static {p2}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "getConfigInterface - subId is invalid"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v2

    .line 99
    :cond_2
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v0, :cond_3

    .line 100
    const-string/jumbo v0, "ImsConfigImpl"

    const-string/jumbo v1, "getConfigInterface - mHwImsConfigImpl is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v2

    .line 104
    :cond_3
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    if-eqz v0, :cond_4

    .line 105
    const-string/jumbo v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfigInterface - mHwImsConfigImpl [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is already exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 109
    :cond_4
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    new-instance v1, Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {v1, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;-><init>(Lcom/huawei/ims/ImsServiceSub;I)V

    aput-object v1, v0, p2

    .line 111
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    return-object v0
.end method

.method getContentTypeMode()I
    .locals 1

    .prologue
    .line 400
    const-string/jumbo v0, "getContentTypeMode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method getDefaultNoReplyTimer()I
    .locals 1

    .prologue
    .line 395
    const-string/jumbo v0, "getDefaultNoReplyTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 396
    const/4 v0, -0x1

    return v0
.end method

.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 271
    return-void
.end method

.method getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    const-string/jumbo v0, "isMissedCallTipsDelay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x0

    return-object v0
.end method

.method getImpiFromSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    const-string/jumbo v0, "getImpiFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method getImpuFromSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    const-string/jumbo v0, "getImpuFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMasterStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMasterValue(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method getMissedCallTipsDelayTimer()I
    .locals 1

    .prologue
    .line 345
    const-string/jumbo v0, "getMissedCallTipsDelayTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 346
    const/4 v0, -0x1

    return v0
.end method

.method getMissedCallTipsRingTimer()I
    .locals 1

    .prologue
    .line 340
    const-string/jumbo v0, "getMissedCallTipsRingTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 341
    const/4 v0, -0x1

    return v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 252
    const-string/jumbo v0, "Unkown"

    .line 253
    .local v0, "retval":Ljava/lang/String;
    return-object v0
.end method

.method public getProvisionedValue(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "retval":I
    return v0
.end method

.method getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 596
    const-string/jumbo v0, "getSharedPreferences"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtBsfPort()I
    .locals 1

    .prologue
    .line 465
    const-string/jumbo v0, "getUtBsfPort"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 466
    const/4 v0, -0x1

    return v0
.end method

.method getUtBsfSrvAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const-string/jumbo v0, "getUtBsfSrvAddr"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtGbaType()I
    .locals 1

    .prologue
    .line 470
    const-string/jumbo v0, "getUtGbaType"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 471
    const/4 v0, -0x1

    return v0
.end method

.method getUtIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    const-string/jumbo v0, "getUtIMPI"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtIMPU(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    const-string/jumbo v0, "getUtIMPU"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    const-string/jumbo v0, "getUtIMPUFromNetwork"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtNafPort()I
    .locals 1

    .prologue
    .line 460
    const-string/jumbo v0, "getUtNafPort"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 461
    const/4 v0, -0x1

    return v0
.end method

.method getUtNafSrvAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    const-string/jumbo v0, "getUtNafSrvAddr"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtRetryInterval(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 591
    const-string/jumbo v0, "getUtRetryInterval"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 592
    const/4 v0, -0x1

    return v0
.end method

.method getUtRetryMaxCounts()I
    .locals 1

    .prologue
    .line 586
    const-string/jumbo v0, "getUtRetryMaxCounts"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 587
    const/4 v0, -0x1

    return v0
.end method

.method getUtUseApn()I
    .locals 1

    .prologue
    .line 385
    const-string/jumbo v0, "getUtUseApn"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 386
    const/4 v0, -0x1

    return v0
.end method

.method getUtX3gppIntendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    const-string/jumbo v0, "getUtX3gppIntendId"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtXcapRootUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    const-string/jumbo v0, "getUtXcapRootUri"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 1
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 222
    const-string/jumbo v0, "getVideoQuality"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public getVolteProvisioned()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method isCFNRcChangeWithCFNL()Z
    .locals 1

    .prologue
    .line 390
    const-string/jumbo v0, "isCFNRcChangeWithCFNL"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method isCallWaitingSyncToCs()Z
    .locals 1

    .prologue
    .line 576
    const-string/jumbo v0, "isCallWaitingSyncToCs"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method isCallWaitingSyncToImsSdk()Z
    .locals 1

    .prologue
    .line 571
    const-string/jumbo v0, "isCallWaitingSyncToImsSdk"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method isCardMccMncPreferToUseUT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cardMccMnc"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string/jumbo v0, "isCardMccMncPreferToUseUT"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method isCardTypePreferToUseUT(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 365
    const-string/jumbo v0, "isCardTypePreferToUseUT"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method isCheckServiceWhenIncomingCall()Z
    .locals 1

    .prologue
    .line 350
    const-string/jumbo v0, "isCheckServiceWhenIncomingCall"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method isHangUpWhenLostNet()Z
    .locals 1

    .prologue
    .line 616
    const-string/jumbo v0, "isHangUpWhenLostNet"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method isIMPUConfigured()Z
    .locals 1

    .prologue
    .line 526
    const-string/jumbo v0, "isIMPUConfigured"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method isImsSsBeUsed()Z
    .locals 1

    .prologue
    .line 355
    const-string/jumbo v0, "isImsSsBeUsed"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method isImsStateFollowVoiceDomain()Z
    .locals 1

    .prologue
    .line 405
    const-string/jumbo v0, "isImsStateFollowVoiceDomain"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallDisplay()Z
    .locals 1

    .prologue
    .line 330
    const-string/jumbo v0, "isMissedCallDisplay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTips()Z
    .locals 1

    .prologue
    .line 410
    const-string/jumbo v0, "isMissedCallTips"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTipsDelay()Z
    .locals 1

    .prologue
    .line 335
    const-string/jumbo v0, "isMissedCallTipsDelay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTipsInternal()Z
    .locals 1

    .prologue
    .line 325
    const-string/jumbo v0, "isMissedCallTipsInternal"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method isSSForbidFallbackCS(I)Z
    .locals 1
    .param p1, "ssType"    # I

    .prologue
    .line 380
    const-string/jumbo v0, "isSSForbidFallbackCS"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method isSSUseCsOnly(I)Z
    .locals 1
    .param p1, "ssType"    # I

    .prologue
    .line 375
    const-string/jumbo v0, "isSSUseCsOnly"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method isUnSupportMMICode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "MMIcode"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string/jumbo v0, "isUnSupportMMICode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method isUtBsfUseHttps()Z
    .locals 1

    .prologue
    .line 420
    const-string/jumbo v0, "isUtBsfUseHttps"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method isUtCSBeUsed()Z
    .locals 1

    .prologue
    .line 425
    const-string/jumbo v0, "isUtCSBeUsed"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method isUtForbiddenWhenVolteSwitchOff()Z
    .locals 1

    .prologue
    .line 360
    const-string/jumbo v0, "isUtForbiddenWhenVolteSwitchOff"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method isUtKsnafEncodedByBase64()Z
    .locals 1

    .prologue
    .line 450
    const-string/jumbo v0, "isUtKsnafEncodedByBase64"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method isUtNafUseHttps()Z
    .locals 1

    .prologue
    .line 415
    const-string/jumbo v0, "isUtNafUseHttps"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method isUtOpenHrsLog()Z
    .locals 1

    .prologue
    .line 440
    const-string/jumbo v0, "isUtOpenHrsLog"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseNodeSelector()Z
    .locals 1

    .prologue
    .line 430
    const-string/jumbo v0, "isUtUseNodeSelector"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseTmpi()Z
    .locals 1

    .prologue
    .line 445
    const-string/jumbo v0, "isUtUseTmpi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseXcapNameSpace()Z
    .locals 1

    .prologue
    .line 435
    const-string/jumbo v0, "isUtUseXcapNameSpace"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTransact, code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 309
    const-string/jumbo v3, "ro.config.hw_vowifi"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 310
    .local v0, "isMapconOn":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsConfig$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 316
    .end local v0    # "isMapconOn":Ljava/lang/Boolean;
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 291
    .restart local v1    # "result":Z
    :pswitch_0
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 293
    const-string/jumbo v3, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .local v2, "subId":I
    const-string/jumbo v3, "ImsConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTransact , subId read from data is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-boolean v3, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v3, :cond_1

    .line 298
    const-string/jumbo v3, "ImsConfigImpl"

    const-string/jumbo v4, "onTransact, single ims, set subId to 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x0

    .line 302
    :cond_1
    sget-object v3, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    sget-object v3, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/huawei/ims/HwImsConfigImpl;->processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 304
    const/4 v1, 0x1

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method

.method setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 611
    const-string/jumbo v0, "setBoolToSP"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method setBsfAddrFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "bsfAddr"    # Ljava/lang/String;

    .prologue
    .line 543
    const-string/jumbo v0, "setBsfAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method setCurrentImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 531
    const-string/jumbo v0, "setCurrentImsi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 276
    return-void
.end method

.method setIMSI(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string/jumbo v0, "setIMSI"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method setImpiFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "impi"    # Ljava/lang/String;

    .prologue
    .line 539
    const-string/jumbo v0, "setImpiFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method setNafAddrFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "nsfAddr"    # Ljava/lang/String;

    .prologue
    .line 547
    const-string/jumbo v0, "setNafAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public setProvisionedValue(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    const-string/jumbo v0, "setSharedPreferences"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method setSpliceMncMcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "spliceMncMcc"    # Ljava/lang/String;

    .prologue
    .line 535
    const-string/jumbo v0, "setSpliceMncMcc"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoQuality qualiy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method spliceMncMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    const-string/jumbo v0, "spliceMncMcc"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    return-object v0
.end method
