.class public final enum Lcom/huawei/ims/HwImsUtImpl$CmdState;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/HwImsUtImpl$CmdState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field public static final enum CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 394
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string/jumbo v1, "CMD_INIT"

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 395
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string/jumbo v1, "CMD_HANDLE_UT"

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string/jumbo v1, "CMD_HANDLE_WAIT"

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    .line 396
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string/jumbo v1, "CMD_HANDLE_CS"

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    .line 397
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    const-string/jumbo v1, "CMD_FINISH"

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/HwImsUtImpl$CmdState;-><init>(Ljava/lang/String;I)V

    .line 398
    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 393
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$CmdState;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$CmdState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$CmdState;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CmdState;

    return-object v0
.end method
