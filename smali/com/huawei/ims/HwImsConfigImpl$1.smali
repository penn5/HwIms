.class Lcom/huawei/ims/HwImsConfigImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsConfigImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    .line 568
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadCastReceiver: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->-wrap1(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V

    .line 572
    const-string/jumbo v0, "com.hisi.vowifi.started"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsConfigImpl;->-get0(Lcom/huawei/ims/HwImsConfigImpl;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsConfigImpl;->-wrap0(Lcom/huawei/ims/HwImsConfigImpl;)V

    .line 578
    :cond_0
    return-void
.end method
