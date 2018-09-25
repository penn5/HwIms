.class Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UtNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    .line 5518
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p2, "-this1"    # Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 5521
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UtNetworkCallback got Network:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5523
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-get5(Lcom/huawei/ims/HwImsUtImpl;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsUtImpl;->-get1(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5526
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string/jumbo v3, "UtNetworkCallback bindProcessToNetwork"

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5527
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5528
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 5529
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string/jumbo v3, "null == ConnectivityManager"

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->-wrap14(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5530
    return-void

    .line 5532
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 5535
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->-set0(Lcom/huawei/ims/HwImsUtImpl;Z)Z

    .line 5538
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-get2(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_2

    .line 5540
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string/jumbo v3, "handle UT data connection UT connected"

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5541
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->-set1(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5542
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-get3(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5543
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-wrap18(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 5547
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-wrap12(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 5549
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-get6(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5550
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-get6(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5551
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-get6(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5556
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    return-void

    .line 5545
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsUtImpl;->-wrap17(Lcom/huawei/ims/HwImsUtImpl;)V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 5560
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UtNetworkCallback lost Network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5562
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->-wrap7(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 5564
    return-void
.end method
