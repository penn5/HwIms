.class Lcom/huawei/vtproxy/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/vtproxy/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/vtproxy/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/huawei/vtproxy/LocalBroadcastManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/huawei/vtproxy/LocalBroadcastManager$1;->this$0:Lcom/huawei/vtproxy/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/vtproxy/LocalBroadcastManager$1;->this$0:Lcom/huawei/vtproxy/LocalBroadcastManager;

    invoke-static {v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->access$000(Lcom/huawei/vtproxy/LocalBroadcastManager;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
