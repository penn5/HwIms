.class public Lcom/huawei/ims/HwImsService;
.super Landroid/telephony/ims/compat/ImsService;
.source "HwImsService.java"


# static fields
.field private static final DUAL_IMS_MAX_SUBSCRIPTIONS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsService"

.field private static final SINGLE_IMS_MAX_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private mServiceSub:[Lcom/huawei/ims/ImsServiceSub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/telephony/ims/compat/ImsService;-><init>()V

    return-void
.end method

.method public static getNumSubscriptions()I
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x2

    return v0

    .line 29
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0}, Landroid/telephony/ims/compat/ImsService;->onCreate()V

    .line 37
    const-string/jumbo v2, "HwImsService"

    const-string/jumbo v3, "HwImsService created!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v2

    new-array v2, v2, [Lcom/huawei/ims/ImsServiceSub;

    iput-object v2, p0, Lcom/huawei/ims/HwImsService;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    .line 39
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    .line 40
    .local v1, "numSubscriptions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 42
    iget-object v2, p0, Lcom/huawei/ims/HwImsService;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    new-instance v3, Lcom/huawei/ims/ImsServiceSub;

    invoke-direct {v3, v0, p0}, Lcom/huawei/ims/ImsServiceSub;-><init>(ILandroid/content/Context;)V

    aput-object v3, v2, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVideoGlobals;->init(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/huawei/ims/HwImsService;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/vt/ImsVideoGlobals;->setImsServiceSub([Lcom/huawei/ims/ImsServiceSub;)V

    .line 53
    :cond_1
    const-string/jumbo v2, "HwImsService"

    const-string/jumbo v3, "HwImsService onCreate done"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 69
    invoke-static {p1}, Lcom/huawei/ims/ImsCallUtils;->isValidSubId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const-string/jumbo v2, "HwImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateMMTelImsFeature: Invalid subId, subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v2, 0x0

    return-object v2

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 77
    .local v1, "serviceSubIndex":I
    sget-boolean v2, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v2, :cond_1

    .line 78
    move v1, p1

    .line 81
    :cond_1
    new-instance v0, Lcom/huawei/ims/feature/HwMMTelFeature;

    iget-object v2, p0, Lcom/huawei/ims/HwImsService;->mServiceSub:[Lcom/huawei/ims/ImsServiceSub;

    aget-object v2, v2, v1

    invoke-direct {v0, p0, p1, v2}, Lcom/huawei/ims/feature/HwMMTelFeature;-><init>(Landroid/content/Context;ILcom/huawei/ims/ImsServiceSub;)V

    .line 84
    .local v0, "hwMMTelFeature":Landroid/telephony/ims/compat/feature/MMTelFeature;
    const-string/jumbo v2, "HwImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateMMTelImsFeature:hwMMTelFeature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    const-string/jumbo v4, " subId = "

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    const-string/jumbo v4, " serviceSubIndex = "

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "HwImsService"

    const-string/jumbo v1, "Ims Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->deInit()V

    .line 64
    :cond_0
    invoke-super {p0}, Landroid/telephony/ims/compat/ImsService;->onDestroy()V

    .line 65
    return-void
.end method
