.class Lcom/huawei/ims/ImsServiceSub$3;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsServiceSub;->createFeatureCapabilityCallBackThread(Lcom/android/ims/internal/IImsRegistrationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsServiceSub;

.field final synthetic val$listener:Lcom/android/ims/internal/IImsRegistrationListener;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub;Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iput-object p2, p0, Lcom/huawei/ims/ImsServiceSub$3;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$3;->val$listener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 882
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v2, v2, Lcom/huawei/ims/ImsServiceSub;->mEnabledFeatures:[I

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    iget-object v3, v3, Lcom/huawei/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 881
    const/4 v4, 0x1

    invoke-interface {v1, v4, v2, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceSub$3;->this$0:Lcom/huawei/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "createFeatureCapabilityCallBackThread()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsServiceSub;->-wrap9(Lcom/huawei/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0
.end method
