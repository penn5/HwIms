.class public Lcom/huawei/ims/ImsUtImpl;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImpl.java"


# static fields
.field private static final ARRAY_INDEX_ONE:I = 0x1

.field protected static final CODE_IS_SUPPORT_CFT:I = 0x7d1

.field protected static final CODE_IS_UT_ENABLE:I = 0x7d2

.field protected static final CODE_UPDATE_CALLBARRING_OPT:I = 0x7d4

.field protected static final CODE_UPDATE_CFU_TIMER:I = 0x7d3

.field private static final DEBUG:Z = false

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field private static final DYADIC_ARRAY:[[Ljava/lang/String;

.field private static final IMS_UT_SERVICE_NAME:Ljava/lang/String; = "ims_ut"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtImpl"

.field private static final UT_INVALID:I = -0x1

.field private static volatile instance:Lcom/huawei/ims/ImsUtImpl;

.field private static mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    .line 41
    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    .line 53
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.forbiddenWVSO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "utForbiddenWhenVolteSwitchOff"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    .line 54
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.bearType"

    aput-object v2, v1, v3

    const-string/jumbo v2, "utBearType"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    .line 55
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.nafsrvaddr"

    aput-object v2, v1, v3

    const-string/jumbo v2, "utNafSrvAddr"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    .line 56
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.nafport"

    aput-object v2, v1, v3

    const-string/jumbo v2, "utNafPort"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 57
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.bsfsrvaddr"

    aput-object v2, v1, v3

    const-string/jumbo v2, "utBsfSrvAddr"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 58
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.bsfport"

    aput-object v2, v1, v3

    const-string/jumbo v2, "utBsfPort"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 59
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.ssTypeUseCsOnly"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ssTypeUseCsOnly"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 60
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ims.cwlocalset"

    aput-object v2, v1, v3

    const-string/jumbo v2, "callWaitingMode"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 61
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.xcapRootUri"

    aput-object v2, v1, v3

    const-string/jumbo v2, "utXcapRootUri"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 62
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "persist.ut.preferToUseUT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "preferToUseUT"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 52
    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    .line 30
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 71
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "ImsUtImpl::ImsUtImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method protected static checkAccessPermission()V
    .locals 3

    .prologue
    .line 395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 396
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 397
    :cond_0
    return-void

    .line 400
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 443
    invoke-static {p1}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "getHwImsUtImpl: subId is invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-object v3

    .line 448
    :cond_0
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    if-nez v1, :cond_1

    .line 449
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "getHwImsUtImpl: mHwImsUtImpl is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-object v3

    .line 453
    :cond_1
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v1, p1

    .line 454
    .local v0, "hwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v0, :cond_2

    .line 455
    const-string/jumbo v1, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHwImsUtImpl: HwImsUtImpl["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_2
    return-object v0
.end method

.method static getInstance()Lcom/huawei/ims/ImsUtImpl;
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 80
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Lcom/huawei/ims/ImsUtImpl;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/huawei/ims/ImsUtImpl;

    invoke-direct {v0}, Lcom/huawei/ims/ImsUtImpl;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    .line 87
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v2, "add ims_ut service"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string/jumbo v0, "ims_ut"

    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 89
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v0

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl;

    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 96
    :goto_0
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 93
    :cond_1
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "instance is already exist!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "() is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsUtImpl;->loge(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string/jumbo v0, "ImsUtImpl"

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

    .line 413
    return-void
.end method


# virtual methods
.method public broadcastUtIdle(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 432
    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 433
    .local v1, "otherSubId":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 434
    .local v0, "otherHwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v0, :cond_1

    .line 435
    const-string/jumbo v2, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "broadcastUtIdle: HwImsUtImpl["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void

    .line 432
    .end local v0    # "otherHwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    .end local v1    # "otherSubId":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "otherSubId":I
    goto :goto_0

    .line 439
    .restart local v0    # "otherHwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->receiveOtherSubUtIdle()V

    .line 440
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 390
    const-string/jumbo v0, "clear"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "close"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 464
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 465
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump ims_ut from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    const-string/jumbo v2, ", uid="

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    const-string/jumbo v1, "ImsUtImpl"

    const-string/jumbo v2, "dump,no permission return"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 476
    :cond_1
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    const-string/jumbo v0, "getUtIMPUFromNetwork"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtInterface(Lcom/huawei/ims/ImsServiceSub;I)Lcom/huawei/ims/HwImsUtImpl;
    .locals 3
    .param p1, "imsServiceSub"    # Lcom/huawei/ims/ImsServiceSub;
    .param p2, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 105
    if-nez p1, :cond_0

    .line 106
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "getUtInterface - imsServiceSub is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v2

    .line 110
    :cond_0
    invoke-static {p2}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "getUtInterface - subId is invalid"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v2

    .line 115
    :cond_1
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    if-nez v0, :cond_2

    .line 116
    const-string/jumbo v0, "ImsUtImpl"

    const-string/jumbo v1, "getUtInterface - mHwImsUtImpl is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v2

    .line 120
    :cond_2
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p2

    if-eqz v0, :cond_3

    .line 121
    const-string/jumbo v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUtInterface - mImsUtImpl [ "

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

    .line 122
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 126
    :cond_3
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    new-instance v1, Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {v1, p1, p2, p0}, Lcom/huawei/ims/HwImsUtImpl;-><init>(Lcom/huawei/ims/ImsServiceSub;ILcom/huawei/ims/ImsUtImpl;)V

    aput-object v1, v0, p2

    .line 129
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p2

    return-object v0
.end method

.method handleImsGetImpuDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "impu"    # Ljava/lang/String;

    .prologue
    .line 369
    const-string/jumbo v0, "handleImsGetImpuDone"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method handleSimCardAbsent()V
    .locals 1

    .prologue
    .line 364
    const-string/jumbo v0, "handleSimCardAbsent"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method handleSimRecordsLoaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "newImsi"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string/jumbo v0, "handleSimRecordsLoaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method isAirModeResetCWInModem()Z
    .locals 1

    .prologue
    .line 358
    const-string/jumbo v0, "isAirModeResetCWInModem"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public isOtherSubUtIdle(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 417
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 418
    .local v0, "otherSubId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->isUtIdle(I)Z

    move-result v1

    return v1

    .line 417
    .end local v0    # "otherSubId":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "otherSubId":I
    goto :goto_0
.end method

.method public isSupportCFT()Z
    .locals 1

    .prologue
    .line 382
    const-string/jumbo v0, "isSupportCFT"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public isUtIdle(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 423
    .local v0, "hwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v0, :cond_0

    .line 424
    const-string/jumbo v1, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUtIdle: HwImsUtImpl["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v1, 0x1

    return v1

    .line 428
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v1

    return v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    .line 159
    const-string/jumbo v2, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTransact , code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsUt$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 189
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 169
    .restart local v0    # "result":Z
    :pswitch_0
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 171
    const-string/jumbo v2, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "subId":I
    const-string/jumbo v2, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTransact , subId read from data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v2, :cond_1

    .line 176
    const-string/jumbo v2, "ImsUtImpl"

    const-string/jumbo v3, "onTransact, single ims, set subId to 0  "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    .line 180
    :cond_1
    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->isValidServiceSubIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processECT()V
    .locals 1

    .prologue
    .line 333
    const-string/jumbo v0, "processECT"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method queryAndSyncCallWaitingToCs()V
    .locals 1

    .prologue
    .line 348
    const-string/jumbo v0, "queryAndSyncCallWaitingToCs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method queryAndSyncCallWaitingToImsSdk()V
    .locals 1

    .prologue
    .line 353
    const-string/jumbo v0, "queryAndSyncCallWaitingToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public queryCLIP()I
    .locals 1

    .prologue
    .line 228
    const-string/jumbo v0, "queryCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 229
    const/4 v0, -0x1

    return v0
.end method

.method public queryCLIR()I
    .locals 1

    .prologue
    .line 220
    const-string/jumbo v0, "queryCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 221
    const/4 v0, -0x1

    return v0
.end method

.method public queryCOLP()I
    .locals 1

    .prologue
    .line 244
    const-string/jumbo v0, "queryCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 245
    const/4 v0, -0x1

    return v0
.end method

.method public queryCOLR()I
    .locals 1

    .prologue
    .line 236
    const-string/jumbo v0, "queryCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 237
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallBarring(I)I
    .locals 1
    .param p1, "cbType"    # I

    .prologue
    .line 196
    const-string/jumbo v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string/jumbo v0, "queryCallForward"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 205
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallWaiting()I
    .locals 1

    .prologue
    .line 212
    const-string/jumbo v0, "queryCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 213
    const/4 v0, -0x1

    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 146
    const-string/jumbo v0, "setListener"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const-string/jumbo v0, "Unsupported API transact() called."

    invoke-static {v0}, Lcom/huawei/ims/ImsUtImpl;->loge(Ljava/lang/String;)V

    .line 139
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 309
    const-string/jumbo v0, "updateCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 310
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIR(I)I
    .locals 1
    .param p1, "clirMode"    # I

    .prologue
    .line 301
    const-string/jumbo v0, "updateCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 302
    const/4 v0, -0x1

    return v0
.end method

.method public updateCOLP(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 325
    const-string/jumbo v0, "updateCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 326
    const/4 v0, -0x1

    return v0
.end method

.method public updateCOLR(I)I
    .locals 1
    .param p1, "presentation"    # I

    .prologue
    .line 317
    const-string/jumbo v0, "updateCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 318
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .prologue
    .line 260
    const-string/jumbo v0, "updateCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 261
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarring(IZ[Ljava/lang/String;)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # Z
    .param p3, "barrList"    # [Ljava/lang/String;

    .prologue
    .line 252
    const-string/jumbo v0, "updateCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 253
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarringOption(Ljava/lang/String;IZ[Ljava/lang/String;)I
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # Z
    .param p4, "barrList"    # [Ljava/lang/String;

    .prologue
    .line 268
    const-string/jumbo v0, "updateCallBarringOption"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 269
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 1
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .prologue
    .line 276
    const-string/jumbo v0, "updateCallForward"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 277
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 1
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string/jumbo v0, "updateCallForwardUncondTimer"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 286
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .prologue
    .line 293
    const-string/jumbo v0, "updateCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 294
    const/4 v0, -0x1

    return v0
.end method
