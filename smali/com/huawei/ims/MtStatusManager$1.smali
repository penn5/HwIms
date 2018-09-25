.class Lcom/huawei/ims/MtStatusManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MtStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/MtStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/MtStatusManager;


# direct methods
.method constructor <init>(Lcom/huawei/ims/MtStatusManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/MtStatusManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    .line 432
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "action":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 438
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    const-string/jumbo v2, "intent null"

    invoke-static {v1, v2}, Lcom/huawei/ims/MtStatusManager;->-wrap2(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V

    .line 439
    return-void

    .line 442
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/MtStatusManager;->-wrap3(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V

    .line 445
    const-string/jumbo v1, "com.android.internal.telephony.mt.monitor.timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    const-string/jumbo v2, "onReceive: monitor timer expires"

    invoke-static {v1, v2}, Lcom/huawei/ims/MtStatusManager;->-wrap2(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    invoke-static {v1}, Lcom/huawei/ims/MtStatusManager;->-wrap0(Lcom/huawei/ims/MtStatusManager;)V

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 448
    :cond_2
    const-string/jumbo v1, "com.android.internal.telephony.mt.reminder.timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    const-string/jumbo v2, "onReceive: reminder timer expires"

    invoke-static {v1, v2}, Lcom/huawei/ims/MtStatusManager;->-wrap2(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    invoke-static {v1}, Lcom/huawei/ims/MtStatusManager;->-wrap1(Lcom/huawei/ims/MtStatusManager;)V

    goto :goto_0
.end method
