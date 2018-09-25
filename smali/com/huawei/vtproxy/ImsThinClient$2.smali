.class Lcom/huawei/vtproxy/ImsThinClient$2;
.super Landroid/os/Handler;
.source "ImsThinClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/vtproxy/ImsThinClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->access$100(I)I

    .line 171
    return-void
.end method
