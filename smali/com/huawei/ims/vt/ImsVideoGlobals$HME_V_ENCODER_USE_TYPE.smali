.class public final enum Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;
.super Ljava/lang/Enum;
.source "ImsVideoGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVideoGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HME_V_ENCODER_USE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

.field public static final enum HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

.field public static final enum HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    const-string/jumbo v1, "HME_V_Encoder_DEFAULT"

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    .line 67
    new-instance v0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    const-string/jumbo v1, "HME_V_Encoder_SURFACE"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_DEFAULT:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->$VALUES:[Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->value:I

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->$VALUES:[Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->value:I

    return v0
.end method
