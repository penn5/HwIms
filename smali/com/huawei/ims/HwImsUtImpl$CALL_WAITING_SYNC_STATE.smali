.class public final enum Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;
.super Ljava/lang/Enum;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALL_WAITING_SYNC_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

.field public static final enum CALL_WAITING_SYNC_TO_CS:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

.field public static final enum CALL_WAITING_SYNC_TO_IMS_SDK:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

.field public static final enum CALL_WAITING_SYNC_UNKNOWN:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;


# instance fields
.field final native_int:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    const-string/jumbo v1, "CALL_WAITING_SYNC_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->CALL_WAITING_SYNC_UNKNOWN:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    .line 429
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    const-string/jumbo v1, "CALL_WAITING_SYNC_TO_IMS_SDK"

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->CALL_WAITING_SYNC_TO_IMS_SDK:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    .line 430
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    const-string/jumbo v1, "CALL_WAITING_SYNC_TO_CS"

    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->CALL_WAITING_SYNC_TO_CS:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    .line 427
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->CALL_WAITING_SYNC_UNKNOWN:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->CALL_WAITING_SYNC_TO_IMS_SDK:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->CALL_WAITING_SYNC_TO_CS:Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 433
    iput p3, p0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->native_int:I

    .line 434
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 427
    const-class v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->$VALUES:[Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl$CALL_WAITING_SYNC_STATE;->native_int:I

    return v0
.end method
