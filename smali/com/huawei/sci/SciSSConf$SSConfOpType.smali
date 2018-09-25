.class public final enum Lcom/huawei/sci/SciSSConf$SSConfOpType;
.super Ljava/lang/Enum;
.source "SciSSConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSConfOpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/sci/SciSSConf$SSConfOpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/sci/SciSSConf$SSConfOpType;

.field public static final enum SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

.field public static final enum SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;

    const-string/jumbo v1, "SSCONF_OP_TYPE_GET"

    invoke-direct {v0, v1, v2}, Lcom/huawei/sci/SciSSConf$SSConfOpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    .line 40
    new-instance v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;

    const-string/jumbo v1, "SSCONF_OP_TYPE_PUT"

    invoke-direct {v0, v1, v3}, Lcom/huawei/sci/SciSSConf$SSConfOpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/sci/SciSSConf$SSConfOpType;

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_GET:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/sci/SciSSConf$SSConfOpType;->SSCONF_OP_TYPE_PUT:Lcom/huawei/sci/SciSSConf$SSConfOpType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfOpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/sci/SciSSConf$SSConfOpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/sci/SciSSConf$SSConfOpType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/huawei/sci/SciSSConf$SSConfOpType;->$VALUES:[Lcom/huawei/sci/SciSSConf$SSConfOpType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/sci/SciSSConf$SSConfOpType;

    return-object v0
.end method
