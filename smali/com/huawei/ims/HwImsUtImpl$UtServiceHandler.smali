.class Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;
.super Landroid/os/Handler;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UtServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    .line 1599
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1600
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->-wrap10(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Message;)V

    .line 1605
    return-void
.end method
