.class final enum Lcom/huawei/ims/GbaAuth$GbaStatus;
.super Ljava/lang/Enum;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GbaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/GbaAuth$GbaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

.field public static final enum GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const-string/jumbo v1, "GBA_NULL"

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 179
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const-string/jumbo v1, "GBA_BOOTSTRAP"

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 180
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const-string/jumbo v1, "GBA_BP_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 181
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const-string/jumbo v1, "GBA_DERIVATION"

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 182
    new-instance v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    const-string/jumbo v1, "GBA_DONE"

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/GbaAuth$GbaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    .line 177
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/ims/GbaAuth$GbaStatus;

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_NULL:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_BP_UPDATE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DERIVATION:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/GbaAuth$GbaStatus;->GBA_DONE:Lcom/huawei/ims/GbaAuth$GbaStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->$VALUES:[Lcom/huawei/ims/GbaAuth$GbaStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/GbaAuth$GbaStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    const-class v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$GbaStatus;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/GbaAuth$GbaStatus;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/huawei/ims/GbaAuth$GbaStatus;->$VALUES:[Lcom/huawei/ims/GbaAuth$GbaStatus;

    return-object v0
.end method
