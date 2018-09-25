.class final enum Lcom/huawei/ims/ImsCallModification$PauseState;
.super Ljava/lang/Enum;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PauseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/ImsCallModification$PauseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/ImsCallModification$PauseState;

.field public static final enum NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

.field public static final enum PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

.field public static final enum RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/huawei/ims/ImsCallModification$PauseState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/ImsCallModification$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    new-instance v0, Lcom/huawei/ims/ImsCallModification$PauseState;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/ImsCallModification$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallModification$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

    new-instance v0, Lcom/huawei/ims/ImsCallModification$PauseState;

    const-string/jumbo v1, "RESUME"

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/ImsCallModification$PauseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/ImsCallModification$PauseState;->RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/ImsCallModification$PauseState;

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallModification$PauseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->RESUME:Lcom/huawei/ims/ImsCallModification$PauseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/ImsCallModification$PauseState;->$VALUES:[Lcom/huawei/ims/ImsCallModification$PauseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/ImsCallModification$PauseState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/huawei/ims/ImsCallModification$PauseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/ImsCallModification$PauseState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/ImsCallModification$PauseState;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/huawei/ims/ImsCallModification$PauseState;->$VALUES:[Lcom/huawei/ims/ImsCallModification$PauseState;

    return-object v0
.end method
