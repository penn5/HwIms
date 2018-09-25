.class public final enum Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;
.super Ljava/lang/Enum;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONFIG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

.field public static final enum CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

.field public static final enum CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

.field public static final enum CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    const-string/jumbo v1, "CONFIG_TYPE_BOOL"

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    .line 397
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    const-string/jumbo v1, "CONFIG_TYPE_INT"

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    .line 398
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    const-string/jumbo v1, "CONFIG_TYPE_STRING"

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    .line 395
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_BOOL:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_INT:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->CONFIG_TYPE_STRING:Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->$VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 395
    const-class v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;->$VALUES:[Lcom/huawei/ims/HwImsConfigImpl$CONFIG_TYPE;

    return-object v0
.end method
