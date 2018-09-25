.class Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;
.super Landroid/os/Handler;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallModificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallModification;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallModification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallModification;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private clearMultiTaskRetryCount()I
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clearing MultiTaskRetryCount from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallModification;->-get1(Lcom/huawei/ims/ImsCallModification;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->-wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->-set1(Lcom/huawei/ims/ImsCallModification;I)I

    move-result v0

    return v0
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 559
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v3, "EVENT_AVP_UPGRADE received"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallModification;->-wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 560
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 561
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 564
    .local v1, "shouldNotifyUser":Z
    if-eqz v1, :cond_1

    .line 565
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v3, "AVP Retry error when Voice call was upgraded to video call"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallModification;->-wrap3(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 571
    .end local v1    # "shouldNotifyUser":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 572
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallModification;->-wrap4(Lcom/huawei/ims/ImsCallModification;)V

    .line 573
    return-void

    .line 567
    .restart local v1    # "shouldNotifyUser":Z
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v3, "AVP Retry error when Video call was dialed"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallModification;->-wrap3(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onModifyCallInitiateDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 490
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v3, "EVENT_MODIFY_CALL_INITIATE_DONE received"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallModification;->-wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 491
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 493
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 494
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v3, "ar is null during modifyCallInitiate"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallModification;->-wrap3(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 495
    return-void

    .line 498
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v3, "videocall error during modifyCallInitiate"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallModification;->-wrap3(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 502
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 503
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_2

    .line 504
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 505
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 507
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 508
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallModification;->-wrap4(Lcom/huawei/ims/ImsCallModification;)V

    .line 509
    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 513
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v2, "EVENT_VIDEO_PAUSE_DONE received"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->-wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 514
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 515
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    .line 516
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->-get0(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$CallModify;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 520
    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->-get0(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$CallModify;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    .line 521
    const/4 v3, 0x4

    .line 520
    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/huawei/ims/ImsCallModification;->-set0(Lcom/huawei/ims/ImsCallModification;Z)Z

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 524
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 525
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->-wrap4(Lcom/huawei/ims/ImsCallModification;)V

    .line 544
    :goto_1
    return-void

    .line 520
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->-wrap0(Lcom/huawei/ims/ImsCallModification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v2, "Error during video pause so retry"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->-wrap3(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 532
    const-wide/16 v4, 0xbb8

    .line 531
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 533
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->-get1(Lcom/huawei/ims/ImsCallModification;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->-set1(Lcom/huawei/ims/ImsCallModification;I)I

    goto :goto_1

    .line 535
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v2, "Video Pause retry limit reached."

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->-wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 537
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 538
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->-wrap4(Lcom/huawei/ims/ImsCallModification;)V

    goto :goto_1

    .line 542
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v2, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallModification;->-wrap3(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onVideoPauseRetry()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallModification;->-get1(Lcom/huawei/ims/ImsCallModification;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->-wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallModification;->-get2(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$PauseState;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/ImsCallModification$PauseState;->NONE:Lcom/huawei/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallModification;->-get0(Lcom/huawei/ims/ImsCallModification;)Lcom/huawei/ims/ImsCallModification$CallModify;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->-wrap1(Lcom/huawei/ims/ImsCallModification;I)V

    .line 556
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v1, "User pressed home/resume during retry so sending out new multitask request"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->-wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 553
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 554
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallModification;->-wrap4(Lcom/huawei/ims/ImsCallModification;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 466
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 468
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onModifyCallInitiateDone(Landroid/os/Message;)V

    goto :goto_0

    .line 471
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseDone(Landroid/os/Message;)V

    goto :goto_0

    .line 474
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    const-string/jumbo v1, "EVENT_MODIFY_CALL_CONFIRM_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallModification;->-wrap2(Lcom/huawei/ims/ImsCallModification;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallModification;->clearPendingModify()V

    .line 476
    iget-object v0, p0, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lcom/huawei/ims/ImsCallModification;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallModification;->-wrap4(Lcom/huawei/ims/ImsCallModification;)V

    goto :goto_0

    .line 479
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseRetry()V

    goto :goto_0

    .line 482
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallModification$ImsCallModificationHandler;->onAvpRetry(Landroid/os/Message;)V

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
