.class public final enum Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImsDataConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field public static final enum IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 370
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_INIT"

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 371
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_CONNECTION_ACT"

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_WIFI_CONNECTION_TUNNEL_ACT"

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 373
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_WIFI_PREF_TUNNEL_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 374
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_WIFI_PREF_IMSPDP_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 375
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_WIFI_ONLY_TUNNEL_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 376
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_LTE_PREF_IMSPDP_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 378
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_LTE_PREF_TUNNEL_FAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 379
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_CELLULAR_PREF_IMSPDP_FAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 381
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_CELLULAR_PREF_TUNNEL_FAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 382
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_CONNECTING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 384
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_CONNECTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 385
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_FINISH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 386
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_IDLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 387
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 388
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_TEMPORARILY_DC_CONNECTION_ACT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const-string/jumbo v1, "IMS_DC_AIRPLANE_ON_TUNNEL_FAIL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;-><init>(Ljava/lang/String;I)V

    .line 389
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 369
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 369
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method
