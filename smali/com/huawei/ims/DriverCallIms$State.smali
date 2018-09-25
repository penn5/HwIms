.class public final enum Lcom/huawei/ims/DriverCallIms$State;
.super Ljava/lang/Enum;
.source "DriverCallIms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/DriverCallIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/ims/DriverCallIms$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum ALERTING:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum DIALING:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum END:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum HOLDING:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum INCOMING:Lcom/huawei/ims/DriverCallIms$State;

.field public static final enum WAITING:Lcom/huawei/ims/DriverCallIms$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    .line 24
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string/jumbo v1, "HOLDING"

    invoke-direct {v0, v1, v4}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    .line 25
    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string/jumbo v1, "DIALING"

    invoke-direct {v0, v1, v5}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string/jumbo v1, "ALERTING"

    invoke-direct {v0, v1, v6}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string/jumbo v1, "INCOMING"

    invoke-direct {v0, v1, v7}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string/jumbo v1, "WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    new-instance v0, Lcom/huawei/ims/DriverCallIms$State;

    const-string/jumbo v1, "END"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/DriverCallIms$State;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/huawei/ims/DriverCallIms$State;

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ACTIVE:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->DIALING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->INCOMING:Lcom/huawei/ims/DriverCallIms$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->WAITING:Lcom/huawei/ims/DriverCallIms$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/ims/DriverCallIms$State;->END:Lcom/huawei/ims/DriverCallIms$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/DriverCallIms$State;->$VALUES:[Lcom/huawei/ims/DriverCallIms$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/ims/DriverCallIms$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/huawei/ims/DriverCallIms$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/DriverCallIms$State;

    return-object v0
.end method

.method public static values()[Lcom/huawei/ims/DriverCallIms$State;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/huawei/ims/DriverCallIms$State;->$VALUES:[Lcom/huawei/ims/DriverCallIms$State;

    return-object v0
.end method
