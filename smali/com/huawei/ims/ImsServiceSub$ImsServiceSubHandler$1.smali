.class Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->createRegCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;

.field final synthetic val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

.field final synthetic val$registrationState:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;

    iput p2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    iput-object p3, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1155
    :try_start_0
    iget v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    packed-switch v2, :pswitch_data_0

    .line 1172
    :goto_0
    :pswitch_0
    return-void

    .line 1157
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v1

    .line 1170
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "createRegCallBackThread()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0

    .line 1160
    .end local v1    # "t":Ljava/lang/Throwable;
    :pswitch_2
    :try_start_1
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    .line 1161
    const/16 v2, 0x3e8

    .line 1162
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1160
    invoke-direct {v0, v2, v3, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1163
    .local v0, "imsReasonInfo":Lcom/android/ims/ImsReasonInfo;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v2, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
