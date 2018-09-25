.class public Lcom/huawei/ims/vt/VTUtils;
.super Ljava/lang/Object;
.source "VTUtils.java"


# static fields
.field private static final HW_VTFLOW_INFO:Ljava/lang/String; = "ro.config.vt_flow_info"

.field private static final HW_VTLTE_ON:Ljava/lang/String; = "ro.config.hw_vtlte_on"

.field private static IS_VT_FLOW_INFO:Z = false

.field private static final TAG:Ljava/lang/String; = "VTUtils"

.field private static mIsVtLteSupported:Z

.field private static preCallDataUsage:J

.field private static totalCallDataUsage:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 18
    const-string/jumbo v0, "ro.config.hw_vtlte_on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/VTUtils;->mIsVtLteSupported:Z

    .line 21
    sput-wide v2, Lcom/huawei/ims/vt/VTUtils;->preCallDataUsage:J

    .line 22
    sput-wide v2, Lcom/huawei/ims/vt/VTUtils;->totalCallDataUsage:J

    .line 41
    const-string/jumbo v0, "ro.config.vt_flow_info"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/VTUtils;->IS_VT_FLOW_INFO:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreCallDataUsage()J
    .locals 2

    .prologue
    .line 29
    sget-wide v0, Lcom/huawei/ims/vt/VTUtils;->preCallDataUsage:J

    return-wide v0
.end method

.method public static getTotalCallDataUsage()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/huawei/ims/vt/VTUtils;->totalCallDataUsage:J

    return-wide v0
.end method

.method public static isImsSwitchOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "result":Z
    if-nez p0, :cond_0

    .line 54
    const-string/jumbo v1, "VTUtils"

    const-string/jumbo v2, "isImsSwitchOn : context is null, return false."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v0

    .line 59
    .end local v0    # "result":Z
    :goto_0
    const-string/jumbo v1, "VTUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isImsSwitchOn: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v0

    .line 57
    .restart local v0    # "result":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVTSupported()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/huawei/ims/vt/VTUtils;->mIsVtLteSupported:Z

    return v0
.end method

.method public static isVtFlowInfo()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/huawei/ims/vt/VTUtils;->IS_VT_FLOW_INFO:Z

    return v0
.end method

.method public static setPreCallDataUsage(J)V
    .locals 0
    .param p0, "datausage"    # J

    .prologue
    .line 25
    sput-wide p0, Lcom/huawei/ims/vt/VTUtils;->preCallDataUsage:J

    .line 26
    return-void
.end method

.method public static setTotalCallDataUsage(J)V
    .locals 0
    .param p0, "datausage"    # J

    .prologue
    .line 33
    sput-wide p0, Lcom/huawei/ims/vt/VTUtils;->totalCallDataUsage:J

    .line 34
    return-void
.end method
