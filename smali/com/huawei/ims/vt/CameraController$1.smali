.class Lcom/huawei/ims/vt/CameraController$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/CameraController;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/CameraController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/CameraController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    .line 481
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 485
    if-nez p2, :cond_0

    .line 486
    const-string/jumbo v5, "CameraController"

    const-string/jumbo v6, "onReceive, intent is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 490
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string/jumbo v5, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 493
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    const-string/jumbo v6, "ims_sdk_res_id"

    const/high16 v7, -0x80000000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/huawei/ims/vt/CameraController;->-set0(Lcom/huawei/ims/vt/CameraController;I)I

    .line 494
    const-string/jumbo v5, "CameraController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "params ready broadcast received, mIMSSDKResId is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v7}, Lcom/huawei/ims/vt/CameraController;->-get2(Lcom/huawei/ims/vt/CameraController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->-get3()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v6}, Lcom/huawei/ims/vt/CameraController;->-get2(Lcom/huawei/ims/vt/CameraController;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-static {}, Lcom/huawei/ims/vt/CameraController;->-get3()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v6}, Lcom/huawei/ims/vt/CameraController;->-get0(Lcom/huawei/ims/vt/CameraController;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v5}, Lcom/huawei/ims/vt/CameraController;->-get1(Lcom/huawei/ims/vt/CameraController;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 497
    invoke-static {}, Lcom/huawei/ims/vt/MediaController;->getInstance()Lcom/huawei/ims/vt/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/vt/MediaController;->setDisplaySurface()Z

    move-result v4

    .line 498
    .local v4, "setSuccess":Z
    if-eqz v4, :cond_1

    .line 499
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v5}, Lcom/huawei/ims/vt/CameraController;->-get1(Lcom/huawei/ims/vt/CameraController;)Lcom/huawei/ims/ImsCallSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/ImsCallSessionImpl;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 501
    .local v1, "cp":Lcom/android/ims/ImsCallProfile;
    iget v5, v1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-static {v5}, Lcom/huawei/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v2

    .line 502
    .local v2, "currentCallType":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v3

    .line 503
    .local v3, "isVideoCallType":Z
    if-eqz v3, :cond_1

    .line 504
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraController$1;->this$0:Lcom/huawei/ims/vt/CameraController;

    invoke-static {v5, v2}, Lcom/huawei/ims/vt/CameraController;->-wrap0(Lcom/huawei/ims/vt/CameraController;I)V

    .line 509
    .end local v1    # "cp":Lcom/android/ims/ImsCallProfile;
    .end local v2    # "currentCallType":I
    .end local v3    # "isVideoCallType":Z
    .end local v4    # "setSuccess":Z
    :cond_1
    return-void
.end method
