.class Lcom/huawei/ims/ImsServiceSub$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    .line 569
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 572
    if-nez p2, :cond_0

    .line 573
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v6, "the intent is null"

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 574
    return-void

    .line 577
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 580
    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 581
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v6, "airplane mode on"

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 582
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v6, "UNREGISTERED"

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap11(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 584
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-set3(Z)Z

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 589
    :cond_2
    const-string/jumbo v5, "android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 590
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v6, "UNREGISTERED"

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap11(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_3
    const-string/jumbo v5, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 594
    sget-boolean v5, Lcom/huawei/ims/ImsCallUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v5, :cond_4

    .line 595
    const-string/jumbo v5, "subscription"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 596
    .local v2, "intentSubId":I
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v5, v5, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    if-eq v2, v5, :cond_4

    .line 597
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v6, "ACTION_CARRIER_CONFIG_CHANGED is not for this sub, return"

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 598
    return-void

    .line 602
    .end local v2    # "intentSubId":I
    :cond_4
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v5}, Lcom/huawei/ims/ImsServiceSub;->handleSimRecordsLoaded()V

    .line 604
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v6, "carrier config changed "

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 605
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap17(Lcom/huawei/ims/ImsServiceSub;)V

    goto :goto_0

    .line 610
    :cond_5
    const-string/jumbo v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 613
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v5, v5, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v5}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v3

    .line 614
    .local v3, "mainSlot":I
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mainSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "intent sub ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "subscription"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 615
    const-string/jumbo v7, "intent phoneId = "

    .line 614
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 615
    const-string/jumbo v7, "phone"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 614
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 617
    const-string/jumbo v5, "subscription"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 618
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap18(Lcom/huawei/ims/ImsServiceSub;)V

    goto/16 :goto_0

    .line 621
    .end local v3    # "mainSlot":I
    :cond_6
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 622
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap10(Lcom/huawei/ims/ImsServiceSub;)V

    goto/16 :goto_0

    .line 626
    :cond_7
    const-string/jumbo v5, "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 627
    const-string/jumbo v5, "type"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 628
    .local v4, "type":I
    const-string/jumbo v5, "data"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "data":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5, v4, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap13(Lcom/huawei/ims/ImsServiceSub;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 633
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_8
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 635
    sget-boolean v5, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_LOWPER_HANG_UP:Z

    if-eqz v5, :cond_1

    .line 637
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$2;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5, p2}, Lcom/huawei/ims/ImsServiceSub;->-wrap14(Lcom/huawei/ims/ImsServiceSub;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
