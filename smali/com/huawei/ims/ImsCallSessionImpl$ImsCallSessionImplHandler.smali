.class Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionImpl;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 682
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 683
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x8f

    const/4 v10, 0x0

    .line 687
    const-string/jumbo v6, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message received: what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-wrap0(Lcom/huawei/ims/ImsCallSessionImpl;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 692
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 908
    const-string/jumbo v6, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unhandled EVENT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 694
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 695
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 696
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "Dial error"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get0(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 701
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get0(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v7}, Lcom/huawei/ims/ImsCallSessionImpl;->-get3(Lcom/huawei/ims/ImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->getLastCallFailCause(Landroid/os/Message;)V

    goto :goto_0

    .line 707
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 708
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 709
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "Add Participant error"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 712
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v7

    .line 713
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsCallSession;

    .line 714
    new-instance v8, Lcom/android/ims/ImsReasonInfo;

    .line 715
    const-string/jumbo v9, "Add Participant Failed"

    .line 714
    invoke-direct {v8, v10, v10, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 712
    invoke-virtual {v7, v6, v8}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 718
    :cond_2
    if-eqz v0, :cond_1

    .line 719
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v7

    .line 720
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsCallSession;

    .line 719
    invoke-virtual {v7, v6}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    goto :goto_0

    .line 725
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 726
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 727
    const-string/jumbo v6, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Accept error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6, v10}, Lcom/huawei/ims/ImsCallSessionImpl;->-set0(Lcom/huawei/ims/ImsCallSessionImpl;Z)Z

    goto/16 :goto_0

    .line 734
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 735
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 736
    const-string/jumbo v6, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Hangup error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_3
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    const/16 v7, 0x1f5

    invoke-static {v6, v7}, Lcom/huawei/ims/ImsCallSessionImpl;->-set1(Lcom/huawei/ims/ImsCallSessionImpl;I)I

    goto/16 :goto_0

    .line 741
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 742
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 743
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "Hold error"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 746
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v7

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsCallSession;

    .line 747
    new-instance v8, Lcom/android/ims/ImsReasonInfo;

    .line 748
    const-string/jumbo v9, "Hold Failed"

    .line 747
    invoke-direct {v8, v10, v10, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 746
    invoke-virtual {v7, v6, v8}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 753
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 754
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 755
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "Resume error"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 758
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v7

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsCallSession;

    .line 759
    new-instance v8, Lcom/android/ims/ImsReasonInfo;

    .line 760
    const-string/jumbo v9, "Resume Failed"

    .line 759
    invoke-direct {v8, v10, v10, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 758
    invoke-virtual {v7, v6, v8}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 765
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 766
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    .line 767
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "Conference error"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 770
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v7

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsCallSession;

    .line 771
    new-instance v8, Lcom/android/ims/ImsReasonInfo;

    .line 772
    const-string/jumbo v9, "Conference Failed"

    .line 771
    invoke-direct {v8, v10, v10, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 770
    invoke-virtual {v7, v6, v8}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 773
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get6(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsServiceClassTracker;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/huawei/ims/ImsServiceClassTracker;->setConfInProgress(Z)V

    .line 797
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    iput-boolean v10, v6, Lcom/huawei/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    goto/16 :goto_0

    .line 775
    :cond_5
    if-eqz v0, :cond_8

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 776
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v7}, Lcom/huawei/ims/ImsCallSessionImpl;->-get1(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 781
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get2(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get2(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;

    move-result-object v6

    iget-object v6, v6, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v7, Lcom/huawei/ims/DriverCallIms$State;->HOLDING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v6, v7, :cond_6

    .line 784
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "EVENT_CONFERENCE: DriverCallIms State is HOLDING"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_6
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isVilteEnhancementSupported()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 790
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "notifyCallSessionMerged"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-wrap5(Lcom/huawei/ims/ImsCallSessionImpl;)V

    .line 793
    :cond_7
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "Conference in progress"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 795
    :cond_8
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "EVENT_CONFERENCE: shouldn\'t reach here"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 800
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 801
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    .line 802
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v7

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsCallSession;

    .line 803
    new-instance v8, Lcom/android/ims/ImsReasonInfo;

    .line 804
    const-string/jumbo v9, "User Rejected"

    .line 803
    invoke-direct {v8, v11, v10, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 802
    invoke-virtual {v7, v6, v8}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 805
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6, v11}, Lcom/huawei/ims/ImsCallSessionImpl;->-set1(Lcom/huawei/ims/ImsCallSessionImpl;I)I

    goto/16 :goto_0

    .line 809
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 810
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_9

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_9

    .line 811
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "Deflect error"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 814
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v7

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsCallSession;

    .line 815
    new-instance v8, Lcom/android/ims/ImsReasonInfo;

    .line 816
    const-string/jumbo v9, "Deflect Failed"

    .line 815
    invoke-direct {v8, v10, v10, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 814
    invoke-virtual {v7, v6, v8}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionDeflectFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 819
    :cond_9
    const-string/jumbo v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "Deflect success"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 821
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v7

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/ims/internal/IImsCallSession;

    invoke-virtual {v7, v6}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionDeflected(Lcom/android/ims/internal/IImsCallSession;)V

    goto/16 :goto_0

    .line 826
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 827
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    .line 828
    iget-object v7, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v7, v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-set2(Lcom/huawei/ims/ImsCallSessionImpl;Z)Z

    .line 829
    const-string/jumbo v6, "ImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v8}, Lcom/huawei/ims/ImsCallSessionImpl;->-get5(Lcom/huawei/ims/ImsCallSessionImpl;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get2(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get2(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/DriverCallIms;

    move-result-object v6

    iget-object v6, v6, Lcom/huawei/ims/DriverCallIms;->state:Lcom/huawei/ims/DriverCallIms$State;

    sget-object v7, Lcom/huawei/ims/DriverCallIms$State;->ALERTING:Lcom/huawei/ims/DriverCallIms$State;

    if-ne v6, v7, :cond_1

    .line 833
    new-instance v3, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 834
    .local v3, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get5(Lcom/huawei/ims/ImsCallSessionImpl;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 835
    iput v10, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 838
    :cond_a
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v6

    .line 839
    iget-object v7, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    .line 838
    invoke-virtual {v6, v7, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_0

    .line 847
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    :pswitch_b
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-wrap1(Lcom/huawei/ims/ImsCallSessionImpl;)V

    goto/16 :goto_0

    .line 854
    :pswitch_c
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get0(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v7}, Lcom/huawei/ims/ImsCallSessionImpl;->-get3(Lcom/huawei/ims/ImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0xf

    invoke-virtual {v7, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->restartRild(Landroid/os/Message;)V

    .line 856
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerHangupFailedEvent()V

    goto/16 :goto_0

    .line 860
    :pswitch_d
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-wrap2(Lcom/huawei/ims/ImsCallSessionImpl;)V

    goto/16 :goto_0

    .line 865
    :pswitch_e
    const/4 v1, 0x0

    .line 867
    .local v1, "causeCode":I
    const/4 v4, 0x0

    .line 869
    .local v4, "message":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 870
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_b

    .line 871
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_c

    .line 874
    const/4 v1, 0x0

    .line 875
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    const-string/jumbo v7, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v6, v7}, Lcom/huawei/ims/ImsCallSessionImpl;->-wrap4(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 887
    .end local v4    # "message":Ljava/lang/String;
    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/HwVolteChrManager;->setRemoteCauseCode(I)V

    .line 890
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "before Fail Cause = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/ims/ImsCallSessionImpl;->-wrap3(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 891
    const/16 v6, 0x486f

    if-ne v1, v6, :cond_d

    .line 892
    const-string/jumbo v6, "Call completed elsewhere"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 891
    if-eqz v6, :cond_d

    .line 893
    const/16 v1, 0x3f6

    .line 898
    :goto_3
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Last IMS Call Fail Cause = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/ims/ImsCallSessionImpl;->-wrap3(Lcom/huawei/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    .line 901
    new-instance v5, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v5, v1, v10, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 903
    .local v5, "reasonInfo":Lcom/android/ims/ImsReasonInfo;
    iget-object v6, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-static {v6}, Lcom/huawei/ims/ImsCallSessionImpl;->-get4(Lcom/huawei/ims/ImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/ImsCallSessionImpl;

    invoke-virtual {v6, v7, v5}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_0

    .line 878
    .end local v5    # "reasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v4    # "message":Ljava/lang/String;
    :cond_c
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 879
    .local v2, "failCausePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_b

    .line 880
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 881
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .local v4, "message":Ljava/lang/String;
    goto :goto_2

    .line 895
    .end local v2    # "failCausePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "message":Ljava/lang/String;
    :cond_d
    invoke-static {v1}, Lcom/huawei/ims/ImsCallUtils;->convertRilCauseCodeToImsCode(I)I

    move-result v1

    goto :goto_3

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
