.class Lcom/huawei/ims/ImsCallSessionListenerProxy$1;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/compat/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$reason:Landroid/telephony/ims/compat/ImsReasonInfo;

.field final synthetic val$session:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/compat/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iput-object p3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;->val$reason:Landroid/telephony/ims/compat/ImsReasonInfo;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;->val$reason:Landroid/telephony/ims/compat/ImsReasonInfo;

    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/compat/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const-string/jumbo v2, "onCallSessionStartFailed()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->-wrap1(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
