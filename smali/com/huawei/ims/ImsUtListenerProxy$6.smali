.class Lcom/huawei/ims/ImsUtListenerProxy$6;
.super Ljava/lang/Object;
.source "ImsUtListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsUtListenerProxy;

.field final synthetic val$cfInfo:[Lcom/android/ims/ImsCallForwardInfo;

.field final synthetic val$id:I

.field final synthetic val$ut:Lcom/android/ims/internal/IImsUt;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsUtListenerProxy;Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtListenerProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->val$ut:Lcom/android/ims/internal/IImsUt;

    iput p3, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->val$id:I

    iput-object p4, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->val$cfInfo:[Lcom/android/ims/ImsCallForwardInfo;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    iget-object v1, v1, Lcom/huawei/ims/ImsUtListenerProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    iget-object v2, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->val$ut:Lcom/android/ims/internal/IImsUt;

    iget v3, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->val$id:I

    iget-object v4, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->val$cfInfo:[Lcom/android/ims/ImsCallForwardInfo;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsUtListenerProxy$6;->this$0:Lcom/huawei/ims/ImsUtListenerProxy;

    const-string/jumbo v2, "utConfigurationCallForwardQueried()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->-wrap0(Lcom/huawei/ims/ImsUtListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
