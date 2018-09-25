.class Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;
.super Landroid/os/Handler;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceSubHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    .line 1141
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1142
    return-void
.end method

.method private createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p2, "registrationState"    # I

    .prologue
    .line 1151
    new-instance v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;-><init>(Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 1174
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "ImsServiceSubRegCallbackThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1175
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1176
    return-void
.end method

.method private detectImsRegisterState(II)I
    .locals 4
    .param p1, "dataRegState"    # I
    .param p2, "rilRat"    # I

    .prologue
    const/4 v3, 0x0

    .line 2113
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enter detectImsRegisterState, dataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", rilRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2116
    if-eqz p1, :cond_0

    .line 2117
    return v3

    .line 2120
    :cond_0
    const/16 v0, 0xe

    if-ne p2, v0, :cond_1

    .line 2123
    const/4 v0, 0x3

    return v0

    .line 2126
    :cond_1
    return v3
.end method

.method private getPhoneId(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 2075
    const/4 v2, -0x1

    .line 2076
    .local v2, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2077
    .local v0, "call":Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 2078
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 2079
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2080
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 2081
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 2085
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return v2
.end method

.method private handleBatteryStatus(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1703
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceSub;->-get13(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-set0(Lcom/huawei/ims/ImsServiceSub;I)I

    .line 1708
    :goto_0
    return-void

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error EVENT_SEND_BATTERY_STATUS AsyncResult ar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleGetDMParamsDone(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2194
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2196
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.providers.dm"

    const-string/jumbo v5, "com.android.providers.dm.DmReceiver"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2199
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2200
    .local v1, "cmdType":I
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2201
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2202
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 2203
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetDMParamsDone success !type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2204
    const-string/jumbo v5, "data"

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2208
    :goto_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v4, v4, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2209
    return-void

    .line 2206
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetDMParamsDone fail !type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1244
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v3, "handleHandover"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1245
    const/4 v0, 0x0

    .line 1246
    .local v0, "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1247
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    check-cast v0, Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;

    .line 1249
    .local v0, "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->-get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1250
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 1251
    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceClassTracker;->handleHandover(Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;)V

    .line 1262
    .end local v0    # "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 1254
    .restart local v0    # "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    .restart local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1255
    return-void

    .line 1259
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    .local v0, "handover":Lcom/huawei/ims/ImsServiceClassTracker$HandoverInfo;
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AsyncResult exception in handleHandover- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleImsDMCN()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1668
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v5, "EVENT_IMS_DMCN "

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1669
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1673
    .local v1, "intent":Landroid/content/Intent;
    sget-boolean v4, Lcom/huawei/ims/HwImsConfigImpl;->isATT:Z

    if-eqz v4, :cond_2

    .line 1674
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.huawei.rcsserviceapplication"

    const-string/jumbo v5, "com.huawei.rcs.service.RcsGlobalBroadcastReceiver"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    .local v0, "component":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1681
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1682
    const-string/jumbo v4, "type"

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1685
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v4, v4, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1686
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1687
    .local v3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1688
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->-get4(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-set1(Lcom/huawei/ims/ImsServiceSub;I)I

    .line 1689
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_IMS_DMCN, no receiver of BROADCAST_DMSYNCSERVICE_TO_IMS found, try again later, count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v6}, Lcom/huawei/ims/ImsServiceSub;->-get4(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1690
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->-get4(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 1691
    const-wide/16 v4, 0x7d0

    const/16 v6, 0x3f8

    invoke-virtual {p0, v6, v4, v5}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1699
    :cond_1
    :goto_1
    return-void

    .line 1676
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.providers.dm"

    const-string/jumbo v5, "com.android.providers.dm.DmReceiver"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "component":Landroid/content/ComponentName;
    goto :goto_0

    .line 1694
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v5, "EVENT_IMS_DMCN, send BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1695
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v4, v4, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1696
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4, v6}, Lcom/huawei/ims/ImsServiceSub;->-set1(Lcom/huawei/ims/ImsServiceSub;I)I

    goto :goto_1
.end method

.method private handleImsStateDone(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1760
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1763
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1764
    const/4 v9, 0x0

    .line 1766
    .local v9, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1767
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    .line 1770
    .end local v9    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_2

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Radio is not available"

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-set4(Lcom/huawei/ims/ImsServiceSub;I)I

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    const-string/jumbo v19, "UNREGISTERED"

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-wrap11(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1777
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/huawei/ims/ImsServiceClassTracker;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V

    goto :goto_0

    .line 1780
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    :cond_1
    return-void

    .line 1785
    .end local v8    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1786
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    .line 1787
    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, [I

    .line 1789
    .local v15, "responseArray":[I
    const/16 v18, 0x0

    aget v11, v15, v18

    .line 1790
    .local v11, "imsRegisterState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "IMS registration state is: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1793
    const-string/jumbo v12, "UNREGISTERED"

    .line 1794
    .local v12, "imsState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get8(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v13

    .line 1797
    .local v13, "oldState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/huawei/ims/ImsServiceSub;->-wrap15(Lcom/huawei/ims/ImsServiceSub;I)V

    .line 1799
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_8

    .line 1801
    const-string/jumbo v12, "REGISTERED"

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-wrap1(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v14

    .line 1808
    .local v14, "optimize":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz v14, :cond_3

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 1812
    .local v6, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v6, :cond_3

    .line 1814
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    .line 1816
    .local v17, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    .line 1817
    .local v5, "dataRegState":I
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v16

    .line 1818
    .local v16, "rilRat":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->detectImsRegisterState(II)I

    move-result v18

    if-nez v18, :cond_3

    .line 1819
    const-string/jumbo v12, "UNREGISTERED"

    .line 1827
    .end local v5    # "dataRegState":I
    .end local v6    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v16    # "rilRat":I
    .end local v17    # "serviceState":Landroid/telephony/ServiceState;
    :cond_3
    if-nez v13, :cond_5

    .line 1829
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-set3(Z)Z

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/ims/HwImsConfigImpl;->isIMPUConfigured()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_4

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    const-string/jumbo v19, "get IMPU from modem"

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->getImsImpu(ILandroid/os/Message;)V

    .line 1844
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToImsSdk()V

    .line 1855
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1856
    const-string/jumbo v19, "volte_vt_enabled"

    const/16 v20, 0x1

    .line 1854
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1857
    const-string/jumbo v18, "REGISTERED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 1860
    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->-get0()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->-get2()I

    move-result v20

    .line 1858
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1870
    :cond_6
    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->-get3()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1871
    const-string/jumbo v18, "persist.dbg.volte_avail_ovr"

    const-string/jumbo v19, "1"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1876
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v19, v0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/huawei/ims/ImsServiceClassTracker;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap3(Lcom/huawei/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;)V

    goto :goto_1

    .line 1880
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    .end local v8    # "e$iterator":Ljava/util/Iterator;
    .end local v14    # "optimize":Z
    :cond_8
    invoke-static {}, Lcom/huawei/ims/ImsCallUtils;->isHwVoWiFiEnabledByPlatform()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mEmergencyUnderWifi:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huawei/ims/ImsServiceSub;->-get5(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3fc

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_a

    .line 1885
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/ims/HwImsConfigImpl;->getIsEmergencyUnderWifi()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get5(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v18

    .line 1884
    if-eqz v18, :cond_f

    .line 1887
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    const-string/jumbo v19, "sos pending, not disable vowifi capability."

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1898
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get1(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "before check ims reg fail, mfirstReg is:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->-get6()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1900
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-wrap0(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_d

    invoke-static {}, Lcom/huawei/ims/ImsServiceSub;->-get6()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1901
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x12

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    const-wide/32 v20, 0x11170

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1902
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-set3(Z)Z

    .line 1908
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/huawei/ims/ImsServiceSub;->-wrap11(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1911
    const-string/jumbo v18, "REGISTERED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/4 v10, 0x1

    .line 1912
    .local v10, "imsRegState":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/ims/ImsServiceSub;->-get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "e$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1913
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/huawei/ims/ImsServiceClassTracker;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V

    goto :goto_4

    .line 1889
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    .end local v8    # "e$iterator":Ljava/util/Iterator;
    .end local v10    # "imsRegState":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    move-object/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, 0x2

    aput v19, v18, v20

    .line 1890
    const-string/jumbo v18, "UNREGISTERED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1911
    :cond_10
    const/4 v10, 0x0

    .restart local v10    # "imsRegState":I
    goto :goto_3

    .line 1916
    .end local v10    # "imsRegState":I
    .end local v11    # "imsRegisterState":I
    .end local v12    # "imsState":Ljava/lang/String;
    .end local v13    # "oldState":I
    .end local v15    # "responseArray":[I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v18, v0

    const-string/jumbo v19, "IMS State query failed!"

    invoke-static/range {v18 .. v19}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1918
    :cond_12
    return-void
.end method

.method private handleLtePDCPInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2145
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v1, "LTE_PDCP_INFO report failed!"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2147
    return-void

    .line 2149
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleLtePDCPInfo([I)V

    .line 2150
    return-void
.end method

.method private handleLtePDCPInfo([I)V
    .locals 8
    .param p1, "ret"    # [I

    .prologue
    .line 2162
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2163
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-long v2, v2

    .line 2164
    const/4 v4, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    const/4 v6, 0x3

    aget v6, p1, v6

    int-to-long v6, v6

    .line 2163
    invoke-static/range {v0 .. v7}, Lcom/huawei/vtproxy/ImsThinClient;->setBuffInfo(JJJJ)I

    .line 2166
    :cond_0
    return-void
.end method

.method private handleLteRRCInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2153
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v1, "LTE_RRC_INFO report failed!"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2155
    return-void

    .line 2157
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleLteRRCInfo([I)V

    .line 2158
    return-void
.end method

.method private handleLteRRCInfo([I)V
    .locals 4
    .param p1, "ret"    # [I

    .prologue
    .line 2168
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2169
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/vtproxy/ImsThinClient;->setRlQualInfo(IIII)I

    .line 2171
    :cond_0
    return-void
.end method

.method private handleMtNewRingReport(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMtNewRingReport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2093
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v1, "handleMtNewRingReport: mMtStatusMgr is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2095
    return-void

    .line 2099
    :cond_0
    if-eqz p1, :cond_1

    .line 2100
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2104
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->getPhoneId(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/MtStatusManager;->notifyRingCall(Ljava/lang/String;I)V

    .line 2108
    :cond_1
    return-void
.end method

.method private handleMtStatusReport(Lcom/huawei/ims/MtStatusReport;)V
    .locals 5
    .param p1, "rp"    # Lcom/huawei/ims/MtStatusReport;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2040
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMtStatusReport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v1, "handleMtStatusReport: mMtStatusMgr is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2046
    return-void

    .line 2050
    :cond_0
    if-eqz p1, :cond_2

    .line 2051
    iget v0, p1, Lcom/huawei/ims/MtStatusReport;->call_status:I

    if-nez v0, :cond_3

    .line 2052
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    iget-object v1, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2053
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v1, "close do-recovery"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2055
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2058
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/MtStatusManager;->addIncomingCall(Lcom/huawei/ims/MtStatusReport;)V

    .line 2071
    :cond_2
    :goto_0
    return-void

    .line 2059
    :cond_3
    iget v0, p1, Lcom/huawei/ims/MtStatusReport;->call_status:I

    if-ne v4, v0, :cond_5

    .line 2060
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    iget-object v1, p1, Lcom/huawei/ims/MtStatusReport;->call_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/MtStatusManager;->isNeedNotifyImsCallEnded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2061
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v1, "open do-recovery"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2063
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/huawei/ims/MtStatusManager;->setIsBusy(Z)V

    .line 2066
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceSub;->-get12(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/MtStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/MtStatusManager;->addFailCall(Lcom/huawei/ims/MtStatusReport;)V

    goto :goto_0

    .line 2068
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v1, "status not supported. "

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNetworkStateChanged(II)V
    .locals 10
    .param p1, "dataRegState"    # I
    .param p2, "rilRat"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 1986
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isUse403ForLocalCW()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1987
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1988
    if-nez p1, :cond_1

    const/4 v3, 0x1

    .line 1989
    .local v3, "isDataReg":Z
    :goto_0
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/huawei/ims/HwImsUtImpl;->setIsDataReg(Z)V

    .line 1990
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsUtImpl;->isSIMCardCheckedByUT()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 1991
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    .line 1997
    .end local v3    # "isDataReg":Z
    :cond_0
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap1(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v4

    .line 1998
    .local v4, "optimize":Z
    if-nez v4, :cond_2

    .line 1999
    return-void

    .line 1988
    .end local v4    # "optimize":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "isDataReg":Z
    goto :goto_0

    .line 2004
    .end local v3    # "isDataReg":Z
    .restart local v4    # "optimize":Z
    :cond_2
    if-nez p2, :cond_3

    .line 2005
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PS abnormal, rat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", reg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2007
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isHangUpWhenLostNet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2009
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->hangupCallsWhenNoService()V

    .line 2017
    :cond_3
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get7(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->isImsStateFollowVoiceDomain()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2020
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->detectImsRegisterState(II)I

    move-result v2

    .line 2021
    .local v2, "imsRegistration":I
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "After detect, ims register state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2022
    if-nez v2, :cond_4

    .line 2023
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v6, "UNREGISTERED"

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap11(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2025
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v5}, Lcom/huawei/ims/ImsServiceSub;->-get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2026
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/ImsServiceClassTracker;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-direct {p0, v5, v8}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V

    goto :goto_1

    .line 2029
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_4
    if-ne v9, v2, :cond_5

    .line 2030
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {p0, v9}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    .line 2035
    .end local v2    # "imsRegistration":I
    :cond_5
    return-void
.end method

.method private handleOnHoldTone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1206
    const-string/jumbo v4, "ImsServiceSub"

    const-string/jumbo v5, "handleOnHoldTone..."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v4, v4, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 1209
    const-string/jumbo v5, "carrier_config"

    .line 1208
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1210
    .local v1, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_0

    .line 1211
    return-void

    .line 1214
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v4, v4, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1215
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "support_hold_tone_bool"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 1216
    :cond_1
    const-string/jumbo v4, "ImsServiceSub"

    const-string/jumbo v5, "handleOnHoldTone,current carrier not support holdtone"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void

    .line 1220
    :cond_2
    if-nez p1, :cond_3

    .line 1221
    return-void

    .line 1224
    :cond_3
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 1225
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1226
    .local v2, "startOnHoldLocalTone":Z
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->-get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1227
    .local v3, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v3, :cond_4

    .line 1228
    invoke-virtual {v3, v2}, Lcom/huawei/ims/ImsServiceClassTracker;->handleOnHoldTone(Z)V

    .line 1235
    .end local v2    # "startOnHoldLocalTone":Z
    .end local v3    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 1230
    .restart local v2    # "startOnHoldLocalTone":Z
    .restart local v3    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_4
    const-string/jumbo v4, "ImsServiceSub"

    const-string/jumbo v5, "Message for non-registered service class"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1233
    .end local v2    # "startOnHoldLocalTone":Z
    .end local v3    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_5
    const-string/jumbo v4, "ImsServiceSub"

    const-string/jumbo v5, "AsyncResult exception in handleOnHoldTone."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetDMParamsDone(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2175
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.server.dm.BROADCAST_IMS_TO_DMSYNCSERVICE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.providers.dm"

    const-string/jumbo v6, "com.android.providers.dm.DmReceiver"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2180
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2181
    .local v1, "cmdType":I
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2183
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 2184
    :goto_0
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    aget v5, v4, v7

    if-ne v5, v8, :cond_1

    .line 2185
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleSetDMParamsDone  success!type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2186
    const-string/jumbo v5, "ret"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2191
    :goto_1
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v5, v5, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2192
    return-void

    .line 2183
    :cond_0
    const/4 v4, 0x0

    .local v4, "result":[I
    goto :goto_0

    .line 2188
    .end local v4    # "result":[I
    :cond_1
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleSetDMParamsDone  fail!type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2189
    const-string/jumbo v5, "ret"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1276
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1277
    .local v10, "updateListSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v10, :cond_1a

    .line 1278
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/ims/ServiceStatus;

    .line 1280
    .local v9, "update":Lcom/huawei/ims/ServiceStatus;
    if-eqz v9, :cond_19

    iget v11, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    invoke-direct {p0, v11}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->isSrvTypeValid(I)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 1281
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v11}, Lcom/huawei/ims/ImsServiceSub;->-get1(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1282
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/huawei/ims/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1283
    const-string/jumbo v13, " isValid = "

    .line 1282
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1283
    iget-boolean v13, v9, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    .line 1282
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1285
    :cond_0
    const/4 v8, 0x0

    .line 1286
    .local v8, "srvSt":Lcom/huawei/ims/ServiceStatus;
    iget v11, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    const/16 v12, 0xb

    if-ne v11, v12, :cond_8

    .line 1287
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v11}, Lcom/huawei/ims/ImsServiceSub;->-get14(Lcom/huawei/ims/ImsServiceSub;)[Lcom/huawei/ims/ServiceStatus;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v8, v11, v12

    .line 1291
    .local v8, "srvSt":Lcom/huawei/ims/ServiceStatus;
    :goto_1
    iget-boolean v11, v9, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    iput-boolean v11, v8, Lcom/huawei/ims/ServiceStatus;->isValid:Z

    .line 1292
    iget v11, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    iput v11, v8, Lcom/huawei/ims/ServiceStatus;->type:I

    .line 1293
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    if-eqz v11, :cond_1

    .line 1294
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    array-length v11, v11

    new-array v11, v11, [B

    iput-object v11, v8, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    .line 1295
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    iget-object v12, v9, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    array-length v12, v12

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    iput-object v11, v8, Lcom/huawei/ims/ServiceStatus;->userdata:[B

    .line 1297
    :cond_1
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v11, :cond_19

    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v11

    if-lez v11, :cond_19

    .line 1298
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v11

    new-array v11, v11, [Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    iput-object v11, v8, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 1300
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v11}, Lcom/huawei/ims/ImsServiceSub;->-get1(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1301
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Call Type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/huawei/ims/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "has num updates = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1302
    iget-object v13, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v13, v13

    .line 1301
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1303
    :cond_2
    iget-object v0, v8, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 1305
    .local v0, "actSt":[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    array-length v11, v11

    if-ge v3, v11, :cond_19

    .line 1307
    iget-object v11, v9, Lcom/huawei/ims/ServiceStatus;->accessTechStatus:[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    .line 1306
    aget-object v1, v11, v3

    .line 1308
    .local v1, "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v11}, Lcom/huawei/ims/ImsServiceSub;->-get1(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1309
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "StatusForAccessTech networkMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1310
    iget v13, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1311
    const-string/jumbo v13, " registered = "

    .line 1309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1311
    iget v13, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 1309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1312
    const-string/jumbo v13, " status = "

    .line 1309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1312
    iget v13, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1313
    const-string/jumbo v13, " restrictCause = "

    .line 1309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1313
    iget v13, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1309
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1314
    :cond_3
    new-instance v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v11}, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v11, v0, v3

    .line 1315
    aget-object v11, v0, v3

    iget v12, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v12, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1316
    aget-object v11, v0, v3

    iget v12, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v12, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 1317
    iget v11, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 1318
    iget v11, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v11, :cond_9

    .line 1319
    aget-object v11, v0, v3

    const/4 v12, 0x1

    iput v12, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1323
    :goto_3
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v11, v8, Lcom/huawei/ims/ServiceStatus;->status:I

    .line 1324
    aget-object v11, v0, v3

    iget v12, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v12, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1325
    const/4 v2, -0x1

    .line 1326
    .local v2, "feature":I
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v12, 0x12

    if-eq v11, v12, :cond_a

    .line 1327
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v12, 0x13

    if-ne v11, v12, :cond_b

    const/4 v7, 0x1

    .line 1328
    .local v7, "modeWifi":Z
    :goto_4
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 1329
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v12, 0xe

    if-ne v11, v12, :cond_d

    const/4 v6, 0x1

    .line 1330
    .local v6, "modeLte":Z
    :goto_5
    if-nez v7, :cond_4

    if-eqz v6, :cond_7

    .line 1331
    :cond_4
    iget v11, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    if-nez v11, :cond_11

    .line 1332
    if-eqz v6, :cond_e

    .line 1333
    const/4 v2, 0x0

    .line 1336
    :goto_6
    iget-object v12, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    if-eqz v7, :cond_10

    .line 1337
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_f

    const/4 v11, 0x1

    .line 1336
    :goto_7
    invoke-static {v12, v11}, Lcom/huawei/ims/ImsServiceSub;->-set2(Lcom/huawei/ims/ImsServiceSub;Z)Z

    .line 1349
    :goto_8
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x3fc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1350
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x3fc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1351
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v12, "remove sos pending msg!"

    invoke-static {v11, v12}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1354
    :cond_5
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6

    .line 1355
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_16

    .line 1357
    :cond_6
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "enabledFeature = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1358
    if-eqz v7, :cond_15

    .line 1359
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v12, 0x2

    const/4 v13, 0x2

    aput v12, v11, v13

    .line 1360
    const-string/jumbo v11, "REGISTERED"

    invoke-direct {p0, v11}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    .line 1305
    :cond_7
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1289
    .end local v0    # "actSt":[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v1    # "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "feature":I
    .end local v3    # "i":I
    .end local v6    # "modeLte":Z
    .end local v7    # "modeWifi":Z
    .local v8, "srvSt":Lcom/huawei/ims/ServiceStatus;
    :cond_8
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v11}, Lcom/huawei/ims/ImsServiceSub;->-get14(Lcom/huawei/ims/ImsServiceSub;)[Lcom/huawei/ims/ServiceStatus;

    move-result-object v11

    iget v12, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    aget-object v8, v11, v12

    .local v8, "srvSt":Lcom/huawei/ims/ServiceStatus;
    goto/16 :goto_1

    .line 1321
    .restart local v0    # "actSt":[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .restart local v1    # "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .restart local v3    # "i":I
    :cond_9
    aget-object v11, v0, v3

    iget v12, v1, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v12, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto/16 :goto_3

    .line 1326
    .restart local v2    # "feature":I
    :cond_a
    const/4 v7, 0x1

    .restart local v7    # "modeWifi":Z
    goto/16 :goto_4

    .line 1327
    .end local v7    # "modeWifi":Z
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "modeWifi":Z
    goto/16 :goto_4

    .line 1328
    :cond_c
    const/4 v6, 0x1

    .restart local v6    # "modeLte":Z
    goto/16 :goto_5

    .line 1329
    .end local v6    # "modeLte":Z
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "modeLte":Z
    goto/16 :goto_5

    .line 1334
    :cond_e
    const/4 v2, 0x2

    goto/16 :goto_6

    .line 1337
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1336
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1339
    :cond_11
    iget v11, v9, Lcom/huawei/ims/ServiceStatus;->type:I

    const/16 v12, 0xb

    if-ne v11, v12, :cond_13

    .line 1340
    if-eqz v6, :cond_12

    .line 1341
    const/4 v2, 0x4

    goto/16 :goto_8

    .line 1342
    :cond_12
    const/4 v2, 0x5

    goto/16 :goto_8

    .line 1344
    :cond_13
    if-eqz v6, :cond_14

    .line 1345
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 1346
    :cond_14
    const/4 v2, 0x3

    goto/16 :goto_8

    .line 1361
    :cond_15
    if-eqz v6, :cond_7

    .line 1362
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v12, -0x1

    const/4 v13, 0x2

    aput v12, v11, v13

    .line 1363
    const-string/jumbo v11, "UNREGISTERED"

    invoke-direct {p0, v11}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    goto :goto_9

    .line 1365
    :cond_16
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v11, :cond_17

    .line 1366
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_18

    .line 1368
    :cond_17
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "disabledFeature = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1369
    if-eqz v7, :cond_7

    .line 1370
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v12, -0x1

    const/4 v13, 0x2

    aput v12, v11, v13

    .line 1371
    const-string/jumbo v11, "UNREGISTERED"

    invoke-direct {p0, v11}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1374
    :cond_18
    aget-object v11, v0, v3

    iget v11, v11, Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    if-eqz v11, :cond_7

    .line 1375
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v12, "current service status is sos pending !"

    invoke-static {v11, v12}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1376
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x3fc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1377
    .local v5, "m":Landroid/os/Message;
    iget-object v11, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v11, v11, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x7530

    invoke-virtual {v11, v5, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    .line 1277
    .end local v0    # "actSt":[Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v1    # "actUpdate":Lcom/huawei/ims/ServiceStatus$StatusForAccessTech;
    .end local v2    # "feature":I
    .end local v3    # "i":I
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "modeLte":Z
    .end local v7    # "modeWifi":Z
    .end local v8    # "srvSt":Lcom/huawei/ims/ServiceStatus;
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1385
    .end local v9    # "update":Lcom/huawei/ims/ServiceStatus;
    :cond_1a
    return-void
.end method

.method private handleSrvccStateChanged([I)V
    .locals 4
    .param p1, "ret"    # [I

    .prologue
    const/4 v3, 0x0

    .line 2135
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v2, "handleSrvccStateChanged"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2136
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 2137
    aget v0, p1, v3

    .line 2138
    .local v0, "state":I
#    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

#    move-result-object v1

#    invoke-interface {v1, v0}, Lcom/android/internal/telephony/HwVolteChrManager;->notifySrvccState(I)V

    .line 2140
    .end local v0    # "state":I
    :cond_0
    return-void
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1184
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v3, "handleSuppSvc"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1185
    const/4 v0, 0x0

    .line 1186
    .local v0, "supp_svc_unsol":Lcom/huawei/ims/HwImsSuppServiceNotification;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1187
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "supp_svc_unsol":Lcom/huawei/ims/HwImsSuppServiceNotification;
    check-cast v0, Lcom/huawei/ims/HwImsSuppServiceNotification;

    .line 1189
    .local v0, "supp_svc_unsol":Lcom/huawei/ims/HwImsSuppServiceNotification;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v2}, Lcom/huawei/ims/ImsServiceSub;->-get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/ImsServiceClassTracker;

    .line 1190
    .local v1, "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    if-eqz v1, :cond_0

    .line 1191
    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lcom/huawei/ims/HwImsSuppServiceNotification;)V

    .line 1201
    .end local v0    # "supp_svc_unsol":Lcom/huawei/ims/HwImsSuppServiceNotification;
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :goto_0
    return-void

    .line 1194
    .restart local v0    # "supp_svc_unsol":Lcom/huawei/ims/HwImsSuppServiceNotification;
    .restart local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v3, "Message for non-registered service class"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1195
    return-void

    .line 1199
    .end local v1    # "tracker":Lcom/huawei/ims/ImsServiceClassTracker;
    .local v0, "supp_svc_unsol":Lcom/huawei/ims/HwImsSuppServiceNotification;
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v3, "AsyncResult exception in handleSuppSvc."

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleUnsolSpeechInfo(I)V
    .locals 9
    .param p1, "speechCodec"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1714
    sget-boolean v4, Lcom/huawei/ims/ImsServiceSub;->IS_AMR_WB_SHOW_HD:Z

    if-eqz v4, :cond_0

    .line 1715
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4, p1}, Lcom/huawei/ims/ImsServiceSub;->-wrap16(Lcom/huawei/ims/ImsServiceSub;I)V

    .line 1725
    :cond_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUnsolSpeechInfo speechCodec = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1726
    packed-switch p1, :pswitch_data_0

    .line 1738
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->-get15(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;

    move-result-object v4

    aput-object v8, v4, v7

    .line 1742
    :goto_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current speechInfoCodec is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v6}, Lcom/huawei/ims/ImsServiceSub;->-get15(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1744
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsServiceSub;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1745
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1746
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/Phone;->setSpeechInfoCodec(I)V

    .line 1748
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1749
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSpeechInfoCodec()Ljava/lang/String;

    move-result-object v3

    .line 1750
    .local v3, "speechInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAudioParameters speechInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1751
    if-eqz v1, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1752
    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1753
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1756
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "speechInfo":Ljava/lang/String;
    :cond_1
    return-void

    .line 1728
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->-get15(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Codec=AMR_NB"

    aput-object v5, v4, v7

    goto :goto_0

    .line 1734
    :pswitch_1
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->-get15(Lcom/huawei/ims/ImsServiceSub;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Codec=AMR_WB"

    aput-object v5, v4, v7

    .line 1735
    const/4 p1, 0x2

    .line 1736
    goto/16 :goto_0

    .line 1726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hangupCallsWhenNoService()V
    .locals 12

    .prologue
    .line 1922
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v9}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 1923
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v9, v7, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v9, :cond_0

    .line 1924
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v10, "get imsphone fails."

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1925
    return-void

    :cond_0
    move-object v3, v7

    .line 1928
    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1929
    .local v3, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    .line 1930
    .local v2, "foregroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v8

    .line 1931
    .local v8, "ringingCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    .line 1933
    .local v0, "backgroundCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    const/4 v5, 0x0

    .line 1934
    .local v5, "isForegroundCallPresent":Z
    const/4 v4, 0x0

    .line 1935
    .local v4, "isBackgroundCallPresent":Z
    const/4 v6, 0x0

    .line 1937
    .local v6, "isRingCallPresent":Z
    invoke-direct {p0, v8}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v6

    .line 1938
    .local v6, "isRingCallPresent":Z
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v4

    .line 1939
    .local v4, "isBackgroundCallPresent":Z
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z

    move-result v5

    .line 1941
    .local v5, "isForegroundCallPresent":Z
    if-nez v5, :cond_1

    if-nez v4, :cond_1

    if-eqz v6, :cond_2

    .line 1942
    :cond_1
#    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

#    move-result-object v9

#    invoke-interface {v9, v2, v8, v0}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerNoServiceDuringCallEvent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 1947
    :cond_2
    if-eqz v6, :cond_3

    .line 1948
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v10, "reject call since lost network."

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1950
    :try_start_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 1957
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v10, "hang up bg call since lost network."

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1959
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1965
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 1966
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v10, "hang up fg call since lost network."

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1968
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1973
    :cond_5
    :goto_2
    return-void

    .line 1951
    :catch_0
    move-exception v1

    .line 1952
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hangup ring call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0

    .line 1960
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :catch_1
    move-exception v1

    .line 1961
    .restart local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hangup bg call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_1

    .line 1969
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :catch_2
    move-exception v1

    .line 1970
    .restart local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    iget-object v9, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hangup fg call fails. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isCallPresent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    .line 1976
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    const/4 v0, 0x1

    return v0

    .line 1979
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSrvTypeValid(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 1265
    if-nez p1, :cond_0

    .line 1266
    const/4 v0, 0x1

    return v0

    .line 1268
    :cond_0
    return v0
.end method

.method private notifyImsVoWiFiState(Ljava/lang/String;)V
    .locals 7
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1389
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v4, v4, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallUtils;->getSubId(I)I

    move-result v3

    .line 1391
    .local v3, "subId":I
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notify IMS-VoWiFi state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sub is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1393
    const-string/jumbo v4, "REGISTERED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1394
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->-wrap17(Lcom/huawei/ims/ImsServiceSub;)V

    .line 1397
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "huawei.intent.action.IMS_SERVICE_VOWIFI_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1398
    .local v2, "imsVoWiFiStateIntent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1399
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1400
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v4, v4, Lcom/huawei/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.huawei.ims.permission.GET_IMS_SERVICE_VOWIFI_STATE"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1402
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceSub;->-get16(Lcom/huawei/ims/ImsServiceSub;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1403
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/ImsServiceClassTracker;

    iget-object v4, v4, Lcom/huawei/ims/ImsServiceClassTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-static {v5, v4}, Lcom/huawei/ims/ImsServiceSub;->-wrap3(Lcom/huawei/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;)V

    goto :goto_0

    .line 1405
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/huawei/ims/ImsServiceClassTracker;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Message received: what = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1412
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1415
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "Received event: EVENT_SRV_STATUS_UPDATE"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1416
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1417
    .local v3, "arResult":Landroid/os/AsyncResult;
    iget-object v14, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_1

    iget-object v14, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v14, :cond_1

    .line 1419
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    .line 1420
    .local v12, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1422
    .end local v12    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ServiceStatus;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "IMS Service Status Update failed!"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-wrap7(Lcom/huawei/ims/ImsServiceSub;)V

    goto :goto_0

    .line 1428
    .end local v3    # "arResult":Landroid/os/AsyncResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1430
    .local v2, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleLtePDCPInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1433
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1435
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleLteRRCInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1439
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1440
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleHandover(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1445
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1446
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSuppSvc(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1450
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v14, v14, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v15, v15, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/huawei/ims/ImsRIL;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 1454
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateDone(Landroid/os/Message;)V

    goto :goto_0

    .line 1460
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "EVENT_IMS_REG_FAIL_DELAY"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v14}, Lcom/huawei/ims/ImsServiceSub;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 1463
    .local v10, "imsphone":Lcom/android/internal/telephony/Phone;
    instance-of v14, v10, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-get8(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v15, v14, :cond_2

    .line 1465
#    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

#    move-result-object v14

    check-cast v10, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .end local v10    # "imsphone":Lcom/android/internal/telephony/Phone;
#    invoke-interface {v14, v10}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerImsRegFailEvent(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

#    move-result v14

    const v14, false

    xor-int/lit8 v14, v14, 0x1

#    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-set3(Z)Z

    goto/16 :goto_0

    .line 1467
    .restart local v10    # "imsphone":Lcom/android/internal/telephony/Phone;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "get imsphone fail, can\'t trigger Ims Reg Fail Event "

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1473
    .end local v10    # "imsphone":Lcom/android/internal/telephony/Phone;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v14, v14, Lcom/huawei/ims/ImsServiceSub;->mCi:Lcom/huawei/ims/ImsRIL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v15, v15, Lcom/huawei/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x7

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/huawei/ims/ImsRIL;->getCurrentCalls(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1477
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1478
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14, v2}, Lcom/huawei/ims/ImsServiceSub;->-wrap4(Lcom/huawei/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1482
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1483
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_3

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v14, :cond_3

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_3

    .line 1484
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/huawei/ims/ImsCallModification$CallModify;

    invoke-static {v15, v14}, Lcom/huawei/ims/ImsServiceSub;->-wrap5(Lcom/huawei/ims/ImsServiceSub;Lcom/huawei/ims/ImsCallModification$CallModify;)V

    goto/16 :goto_0

    .line 1486
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1490
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1491
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_4

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v14, :cond_4

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_4

    .line 1492
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    invoke-static {v15, v14}, Lcom/huawei/ims/ImsServiceSub;->-wrap6(Lcom/huawei/ims/ImsServiceSub;[I)V

    goto/16 :goto_0

    .line 1494
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error EVENT_MODIFY_RESULT AsyncResult ar= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1501
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    sget-boolean v14, Lcom/huawei/ims/HwImsConfigImpl;->FEATURE_VOLTE_DYN:Z

    if-nez v14, :cond_5

    .line 1503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v14}, Lcom/huawei/ims/ImsServiceSub;->handleSimRecordsLoaded()V

    goto/16 :goto_0

    .line 1505
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-get10(Lcom/huawei/ims/ImsServiceSub;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "main slot changed, handle sim records loaded."

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-virtual {v14}, Lcom/huawei/ims/ImsServiceSub;->handleSimRecordsLoaded()V

    .line 1508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-set5(Lcom/huawei/ims/ImsServiceSub;Z)Z

    goto/16 :goto_0

    .line 1515
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/huawei/ims/ImsServiceSub;->handleImsGetImpuDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1519
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-wrap12(Lcom/huawei/ims/ImsServiceSub;)V

    goto/16 :goto_0

    .line 1524
    :sswitch_f
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1525
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    .line 1527
    .local v8, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v14, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1528
    .local v5, "dataRegState":I
    iget-object v14, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1529
    .local v13, "rilRat":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED, dataRegState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1530
    const-string/jumbo v16, ", Ril RAT is "

    .line 1529
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1532
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleNetworkStateChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1535
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "dataRegState":I
    .end local v8    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13    # "rilRat":I
    :catch_0
    move-exception v9

    .line 1536
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[error]parse message of EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED fail, exception is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1542
    .end local v9    # "e":Ljava/lang/Exception;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "EVENT_MT_STATUS_REPORT"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1543
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1544
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_6

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v14, :cond_6

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_6

    .line 1545
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/huawei/ims/MtStatusReport;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleMtStatusReport(Lcom/huawei/ims/MtStatusReport;)V

    goto/16 :goto_0

    .line 1547
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error EVENT_MT_STATUS_REPORT AsyncResult ar= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1551
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "EVENT_MT_NEW_RING_REPORT"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1552
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1553
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_7

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v14, :cond_7

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_7

    .line 1554
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleMtNewRingReport(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 1556
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error EVENT_MT_NEW_RING_REPORT AsyncResult ar= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1562
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "EVENT_REGISTERED_TO_NETWORK"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/ims/HwImsUtImpl;->isAirModeResetCWInModem()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-get9(Lcom/huawei/ims/ImsServiceSub;)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    goto/16 :goto_0

    .line 1572
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "EVENT_IMS_CS_REDIAL"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-wrap2(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v15, v14, :cond_0

    .line 1577
#    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

#    move-result-object v14

#    invoke-interface {v14}, Lcom/android/internal/telephony/HwVolteChrManager;->notifyCSRedial()V

    goto/16 :goto_0

    .line 1582
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "EVENT_SRVCC_STATE_CHANGED"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-wrap2(Lcom/huawei/ims/ImsServiceSub;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v15, v14, :cond_0

    .line 1587
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1588
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_8

    .line 1589
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSrvccStateChanged([I)V

    goto/16 :goto_0

    .line 1591
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Srvcc exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1599
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, " handleMessage (EVENT_UNSOl_SPEECH_INFO)"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1600
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1601
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_9

    .line 1602
    iget-object v11, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [I

    .line 1603
    .local v11, "intResult":[I
    const/4 v14, 0x0

    aget v14, v11, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleUnsolSpeechInfo(I)V

    goto/16 :goto_0

    .line 1605
    .end local v11    # "intResult":[I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "EVENT_UNSOl_SPEECH_INFO exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1611
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsDMCN()V

    goto/16 :goto_0

    .line 1614
    :sswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleSetDMParamsDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1617
    :sswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleGetDMParamsDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1622
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, " handleMessage (EVENT_SEND_BATTERY_STATUS)"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1623
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1624
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleBatteryStatus(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1629
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, " handleMessage (EVENT_VOWIFI_SOS_PENDING_TIMEOUT)"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v14, v14, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v15, -0x1

    const/16 v16, 0x2

    aput v15, v14, v16

    .line 1631
    const-string/jumbo v14, "UNREGISTERED"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->notifyImsVoWiFiState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1636
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "VT_FLOW_INFO_REPORT"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1638
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1640
    .local v4, "asyncresult":Landroid/os/AsyncResult;
    if-eqz v4, :cond_0

    .line 1641
    iget-object v14, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1642
    .local v6, "data":J
    invoke-static {}, Lcom/huawei/ims/vt/ImsMedia;->getInstance()Lcom/huawei/ims/vt/ImsMedia;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget v15, v15, Lcom/huawei/ims/ImsServiceSub;->mSub:I

    invoke-virtual {v14, v15, v6, v7}, Lcom/huawei/ims/vt/ImsMedia;->vtFlowInfoReport(IJ)V

    goto/16 :goto_0

    .line 1648
    .end local v4    # "asyncresult":Landroid/os/AsyncResult;
    .end local v6    # "data":J
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, " handleMessage (EVENT_IMS_SET_VT_CAPABILITY)"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1651
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const-string/jumbo v15, "EVENT_IMS_RADIO_ON"

    invoke-static {v14, v15}, Lcom/huawei/ims/ImsServiceSub;->-wrap8(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {v14}, Lcom/huawei/ims/ImsServiceSub;->-wrap17(Lcom/huawei/ims/ImsServiceSub;)V

    goto/16 :goto_0

    .line 1657
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1658
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->handleOnHoldTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1412
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_0
        0x7 -> :sswitch_9
        0x8 -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_a
        0xf -> :sswitch_c
        0x10 -> :sswitch_e
        0x11 -> :sswitch_d
        0x12 -> :sswitch_7
        0x13 -> :sswitch_1c
        0x3eb -> :sswitch_b
        0x3ed -> :sswitch_10
        0x3ee -> :sswitch_11
        0x3ef -> :sswitch_f
        0x3f0 -> :sswitch_12
        0x3f1 -> :sswitch_13
        0x3f2 -> :sswitch_14
        0x3f3 -> :sswitch_15
        0x3f4 -> :sswitch_1
        0x3f5 -> :sswitch_2
        0x3f6 -> :sswitch_17
        0x3f7 -> :sswitch_18
        0x3f8 -> :sswitch_16
        0x3fa -> :sswitch_19
        0x3fc -> :sswitch_1a
        0x44c -> :sswitch_1e
        0x44d -> :sswitch_1d
        0x9c41 -> :sswitch_1b
    .end sparse-switch
.end method
