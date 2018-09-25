.class Lcom/huawei/ims/ImsRIL$ImsRilHandler;
.super Landroid/os/Handler;
.source "ImsRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRilHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsRIL;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsRIL;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 486
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 493
    :sswitch_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v4, v3, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 494
    :try_start_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget v5, v5, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/huawei/ims/ImsRIL;->-wrap0(Lcom/huawei/ims/ImsRIL;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v3, v3, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 497
    .local v0, "count":I
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WAKE_LOCK_TIMEOUT  mRequestsList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 500
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v3, v3, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsRILRequest;

    .line 501
    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 502
    iget v6, v2, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v6}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    .line 501
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 509
    :sswitch_1
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 510
    const-string/jumbo v5, " mRadioProxyCookie = "

    .line 509
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 510
    iget-object v5, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v5, v5, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 509
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 511
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    iget-object v3, v3, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->-wrap2(Lcom/huawei/ims/ImsRIL;)V

    .line 516
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->this$0:Lcom/huawei/ims/ImsRIL;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/huawei/ims/ImsRIL;->-wrap1(Lcom/huawei/ims/ImsRIL;Landroid/os/Message;)Lvendor/huawei/hardware/radio/V1_0/IRadio;

    goto/16 :goto_0

    .line 486
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method
