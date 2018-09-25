.class final Lcom/hisi/mapcon/ServerAddr$1;
.super Ljava/lang/Object;
.source "ServerAddr.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisi/mapcon/ServerAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/hisi/mapcon/ServerAddr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hisi/mapcon/ServerAddr;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    new-instance v0, Lcom/hisi/mapcon/ServerAddr;

    invoke-direct {v0, p1}, Lcom/hisi/mapcon/ServerAddr;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/hisi/mapcon/ServerAddr$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hisi/mapcon/ServerAddr;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/hisi/mapcon/ServerAddr;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 101
    new-array v0, p1, [Lcom/hisi/mapcon/ServerAddr;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/hisi/mapcon/ServerAddr$1;->newArray(I)[Lcom/hisi/mapcon/ServerAddr;

    move-result-object v0

    return-object v0
.end method
