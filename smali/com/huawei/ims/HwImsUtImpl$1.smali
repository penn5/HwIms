.class Lcom/huawei/ims/HwImsUtImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    .line 1887
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1890
    if-nez p2, :cond_0

    .line 1891
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string/jumbo v6, "onReceive intent is null"

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-wrap14(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1893
    return-void

    .line 1896
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1898
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1901
    const-string/jumbo v5, "com.hisi.mapcon.servicefailed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1903
    const-string/jumbo v5, "serviceType"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1904
    .local v4, "serviceType":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap2(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v1

    .line 1906
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handle UT data connection vowifi conntion begin fail and serviceType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1908
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap1(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eq v9, v4, :cond_2

    .line 1909
    :cond_1
    return-void

    .line 1908
    :cond_2
    if-eqz v1, :cond_1

    .line 1912
    if-eqz v1, :cond_3

    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iget-object v6, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-eq v5, v6, :cond_3

    .line 1913
    return-void

    .line 1915
    :cond_3
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-get4(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1916
    return-void

    .line 1918
    :cond_4
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-set1(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1920
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v8}, Lcom/huawei/ims/HwImsUtImpl;->-wrap15(Lcom/huawei/ims/HwImsUtImpl;Z)V

    .line 1922
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap7(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1924
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-get7(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v5

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v6}, Lcom/huawei/ims/HwImsUtImpl;->-get0(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1926
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-get7(Lcom/huawei/ims/HwImsUtImpl;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-set4(Lcom/huawei/ims/HwImsUtImpl;I)I

    .line 1927
    if-eqz v1, :cond_5

    .line 1928
    sget-object v5, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v5, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1930
    :cond_5
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string/jumbo v6, "received ACTION_MAPCON_SERVICE_FAILED,retry tunnel setup."

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1931
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap0(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1933
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v9}, Lcom/huawei/ims/HwImsUtImpl;->-wrap3(Lcom/huawei/ims/HwImsUtImpl;Z)I

    .line 1936
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    sget-object v6, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-set1(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1938
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap18(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1939
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap16(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1992
    .end local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .end local v4    # "serviceType":I
    :cond_6
    :goto_0
    return-void

    .line 1941
    .restart local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .restart local v4    # "serviceType":I
    :cond_7
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v8}, Lcom/huawei/ims/HwImsUtImpl;->-set4(Lcom/huawei/ims/HwImsUtImpl;I)I

    .line 1943
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string/jumbo v6, "handle UT data connection received ACTION_MAPCON_SERVICE_FAILED,tunnel setup fail."

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1945
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap18(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1946
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap5(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1947
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v5, v10}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto :goto_0

    .line 1951
    :cond_8
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v8}, Lcom/huawei/ims/HwImsUtImpl;->-set4(Lcom/huawei/ims/HwImsUtImpl;I)I

    .line 1953
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string/jumbo v6, "handle UT data connection received ACTION_MAPCON_SERVICE_FAILED,tunnel setup fail."

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1955
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap18(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1956
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5}, Lcom/huawei/ims/HwImsUtImpl;->-wrap5(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1957
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v5, v10}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    goto :goto_0

    .line 1961
    .end local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .end local v4    # "serviceType":I
    :cond_9
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1963
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1965
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v3}, Lcom/huawei/ims/HwImsUtImpl;->-wrap9(Lcom/huawei/ims/HwImsUtImpl;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1967
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a
    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1970
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v9}, Lcom/huawei/ims/HwImsUtImpl;->-set2(Lcom/huawei/ims/HwImsUtImpl;Z)Z

    .line 1972
    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1974
    .local v2, "isAirplaneModeOn":Z
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirModeOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1976
    if-eqz v2, :cond_6

    .line 1977
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v9}, Lcom/huawei/ims/HwImsUtImpl;->-wrap6(Lcom/huawei/ims/HwImsUtImpl;Z)V

    .line 1979
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, v8}, Lcom/huawei/ims/HwImsUtImpl;->-wrap8(Lcom/huawei/ims/HwImsUtImpl;I)V

    goto/16 :goto_0

    .line 1984
    .end local v2    # "isAirplaneModeOn":Z
    :cond_b
    const-string/jumbo v5, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1985
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v5, p2}, Lcom/huawei/ims/HwImsUtImpl;->-wrap11(Lcom/huawei/ims/HwImsUtImpl;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1988
    :cond_c
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string/jumbo v6, "intent not support"

    invoke-static {v5, v6}, Lcom/huawei/ims/HwImsUtImpl;->-wrap14(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1990
    return-void
.end method
