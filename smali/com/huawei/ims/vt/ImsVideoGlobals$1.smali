.class final Lcom/huawei/ims/vt/ImsVideoGlobals$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsVideoGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVideoGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string/jumbo v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    const-string/jumbo v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 190
    if-eqz v1, :cond_2

    .line 194
    :cond_0
    const-string/jumbo v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: mIsSdkInited is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-get2()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-get2()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/vt/VTUtils;->isImsSwitchOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string/jumbo v1, "ImsVideoGlobals"

    const-string/jumbo v2, "start to initImsThinClient"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsThinClient;->initImsThinClient(Landroid/content/Context;)I

    .line 198
    invoke-static {v4}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-set1(Z)Z

    .line 199
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_CAMERA_TYPE;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 200
    sget-object v1, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/ImsVideoGlobals$HME_V_ENCODER_USE_TYPE;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 201
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-get1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string/jumbo v1, "ImsVideoGlobals"

    const-string/jumbo v2, "create HME log folder after SDK inited"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    const-string/jumbo v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent.getAction is ACTION_BOOT_COMPLETED,mIsSdkInited = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-get2()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->imsProcBootCompleted()V

    .line 213
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-get2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    const-string/jumbo v1, "ImsVideoGlobals"

    const-string/jumbo v2, "create HME log folder when receive BootCompleted broadcast"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V

    .line 217
    :cond_3
    invoke-static {v4}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-set0(Z)Z

    goto :goto_0

    .line 219
    :cond_4
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const-string/jumbo v1, "ImsVideoGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "intent.getAction is ACTION_SHUTDOWN,mIsSdkInited = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-get2()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->-get2()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-static {}, Lcom/huawei/ims/vt/ImsVideoGlobals;->deInit()V

    goto :goto_0
.end method
