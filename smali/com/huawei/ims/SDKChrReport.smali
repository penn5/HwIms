.class public Lcom/huawei/ims/SDKChrReport;
.super Ljava/lang/Object;
.source "SDKChrReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/SDKChrReport$1;,
        Lcom/huawei/ims/SDKChrReport$2;
    }
.end annotation


# static fields
.field private static final CAMERA_OPEN_FAIL_SUB_EVENT:I = 0x1

.field private static final FAULT_IMS_SS_PERFORMANCE_EVENT:I = 0xfa4

.field private static final FAULT_IMS_VT_FAIL_EVENT:I = 0xfa3

.field private static final LOG_RAW_DATA:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SDKChrReport"

.field private static final SDK_INTINFO:Ljava/lang/String; = "sdk_intinfo"

.field private static final SDK_STRINFO:Ljava/lang/String; = "sdk_strinfo"

.field private static final UT_FAIL_SUB_EVENT:I = 0xa

.field private static final VIDEO_PERFOMANCE_SUB_EVENT:I = 0x2

.field private static final VOLTE_MODULE_ID:I = 0xfa0


# instance fields
.field private mCameraClientChrCB:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

.field private mContext:Landroid/content/Context;

.field private mHmeChrCB:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;


# direct methods
.method static synthetic -wrap0(Lcom/huawei/ims/SDKChrReport;[I[Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/huawei/ims/SDKChrReport;
    .param p1, "iCHRPara"    # [I
    .param p2, "strCHRPara"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/SDKChrReport;->reportSDKCHRParas([I[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lcom/huawei/ims/SDKChrReport$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/SDKChrReport$1;-><init>(Lcom/huawei/ims/SDKChrReport;)V

    iput-object v0, p0, Lcom/huawei/ims/SDKChrReport;->mHmeChrCB:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    .line 159
    new-instance v0, Lcom/huawei/ims/SDKChrReport$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/SDKChrReport$2;-><init>(Lcom/huawei/ims/SDKChrReport;)V

    iput-object v0, p0, Lcom/huawei/ims/SDKChrReport;->mCameraClientChrCB:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 36
    iput-object p1, p0, Lcom/huawei/ims/SDKChrReport;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/huawei/ims/SDKChrReport;->mCameraClientChrCB:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsCameraClient;->setChrVtCallBack(Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;)V

    .line 38
    iget-object v0, p0, Lcom/huawei/ims/SDKChrReport;->mHmeChrCB:Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setChrHmeCallBack(Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;)V

    .line 39
    return-void
.end method

.method private isUTEvent(I)Z
    .locals 1
    .param p1, "eventID"    # I

    .prologue
    .line 57
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVTEvent(I)Z
    .locals 2
    .param p1, "eventID"    # I

    .prologue
    const/4 v1, 0x1

    .line 49
    if-eq p1, v1, :cond_0

    .line 50
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 51
    :cond_0
    return v1

    .line 53
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private logCHRPara([I[Ljava/lang/String;)V
    .locals 6
    .param p1, "iCHRPara"    # [I
    .param p2, "strCHRPara"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 64
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 65
    :cond_0
    const-string/jumbo v3, "SDKChrReport"

    const-string/jumbo v4, "logCHRPara: iCHRPara is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v2, "outStr":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "CHRParas of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 76
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_2
    if-nez p2, :cond_3

    .line 82
    const-string/jumbo v3, "SDKChrReport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "strCHRPara is null, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 86
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_4

    .line 87
    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_4
    const-string/jumbo v3, "SDKChrReport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method private reportSDKCHRParas([I[Ljava/lang/String;)V
    .locals 5
    .param p1, "iCHRPara"    # [I
    .param p2, "strCHRPara"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 122
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    const-string/jumbo v1, "SDKChrReport"

    const-string/jumbo v2, "iCHRPara is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_1
    const-string/jumbo v1, "SDKChrReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportSDKCHRParas iCHRPara[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/SDKChrReport;->logCHRPara([I[Ljava/lang/String;)V

    .line 133
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lcom/huawei/ims/SDKChrReport;->isVTEvent(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const-string/jumbo v1, "SDKChrReport"

    const-string/jumbo v2, "report VTLTE CHR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sdk_intinfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 138
    const-string/jumbo v1, "sdk_strinfo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    const/16 v1, 0xfa3

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/SDKChrReport;->sendVolteChrBroadcast(Landroid/os/Bundle;I)V

    .line 147
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 141
    :cond_2
    aget v1, p1, v4

    invoke-direct {p0, v1}, Lcom/huawei/ims/SDKChrReport;->isUTEvent(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    const-string/jumbo v1, "SDKChrReport"

    const-string/jumbo v2, "report UT CHR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_3
    const-string/jumbo v1, "SDKChrReport"

    const-string/jumbo v2, "unknown CHR EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendVolteChrBroadcast(Landroid/os/Bundle;I)V
    .locals 9
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "faultID"    # I

    .prologue
    .line 99
    const-string/jumbo v6, "SDKChrReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendVolteChrBroadcast faultID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string/jumbo v0, "com.huawei.android.permission.GET_CHR_DATA"

    .line 102
    .local v0, "CHR_BROADCAST_PERMISSION":Ljava/lang/String;
    const-string/jumbo v3, "com.huawei.android.chr.action.ACTION_REPORT_CHR"

    .line 105
    .local v3, "INTENT_CHR":Ljava/lang/String;
    const-string/jumbo v4, "module_id"

    .line 106
    .local v4, "MODULE_ID":Ljava/lang/String;
    const-string/jumbo v2, "fault_id"

    .line 107
    .local v2, "FAULT_ID":Ljava/lang/String;
    const-string/jumbo v1, "chr_data"

    .line 109
    .local v1, "CHR_DATA":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.huawei.android.chr.action.ACTION_REPORT_CHR"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v5, "mI":Landroid/content/Intent;
    const-string/jumbo v6, "module_id"

    const/16 v7, 0xfa0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string/jumbo v6, "fault_id"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string/jumbo v6, "chr_data"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 114
    iget-object v6, p0, Lcom/huawei/ims/SDKChrReport;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.huawei.android.permission.GET_CHR_DATA"

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getCameraOpenFailedReason()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsCameraClient;->startChrVtErrReport(I)V

    .line 46
    return-void
.end method
