.class final enum Lcom/huawei/ims/GbaAuth$KSNAF_STATE;
.super Ljava/lang/Enum;
.source "GbaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/GbaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KSNAF_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/GbaAuth$KSNAF_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

.field public static final enum KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

.field public static final enum KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

.field public static final enum KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

.field public static final enum KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;


# instance fields
.field final native_int:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    const-string/jumbo v1, "KSNAF_VALID"

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    .line 113
    new-instance v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    const-string/jumbo v1, "KSNAF_INVALID_AND_NEED_DERIVATION"

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    .line 114
    new-instance v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    const-string/jumbo v1, "KSNAF_INVALID_AND_NEED_BOOTSTRAP"

    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    .line 115
    new-instance v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    const-string/jumbo v1, "KSNAF_INVALID_AND_IS_COMPUTING"

    invoke-direct {v0, v1, v5, v5}, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    sget-object v1, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_VALID:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_DERIVATION:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_NEED_BOOTSTRAP:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->KSNAF_INVALID_AND_IS_COMPUTING:Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->$VALUES:[Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->native_int:I

    .line 119
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/GbaAuth$KSNAF_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-class v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/GbaAuth$KSNAF_STATE;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->$VALUES:[Lcom/huawei/ims/GbaAuth$KSNAF_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/huawei/ims/GbaAuth$KSNAF_STATE;->native_int:I

    return v0
.end method
