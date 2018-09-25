.class public final enum Lcom/huawei/ims/HwImsUtImpl$CmdToken;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/HwImsUtImpl$CmdToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_CHANGE_CALLBARRING_PASSWORD:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field public static final enum CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_GET_CALLBARRING_OPTION"

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 403
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_SET_CALLBARRING_OPTION"

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 404
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_GET_OUTGOING_CALLERID_DISPLAY"

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 405
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_SET_OUTGOING_CALLERID_DISPLAY"

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 406
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_GET_CALLWAITING"

    invoke-direct {v0, v1, v7}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 407
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_SET_CALLWAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 408
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_GET_ORIGINATING_IDENTITY_PRESENTATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 409
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_SET_ORIGINATING_IDENTITY_PRESENTATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 410
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_GET_CALLFORWARDING_OPTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 411
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_SET_CALLFORWARDING_OPTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 412
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_CHANGE_CALLBARRING_PASSWORD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_CHANGE_CALLBARRING_PASSWORD:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 413
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_GET_TERMINATING_IDENTITY_PRESETNTATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 414
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_SET_TERMINATING_IDENTITY_PRESETNTATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 415
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_GET_TERMINATING_IDENTITY_RESTRICTION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 416
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const-string/jumbo v1, "CMD_SET_TERMINATING_IDENTITY_RESTRICTION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 401
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_CHANGE_CALLBARRING_PASSWORD:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$CmdToken;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 401
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$CmdToken;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    return-object v0
.end method
