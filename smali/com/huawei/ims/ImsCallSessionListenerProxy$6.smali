.class Lcom/huawei/ims/ImsCallSessionListenerProxy$6;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$reasonInfo:Lcom/android/ims/ImsReasonInfo;

.field final synthetic val$session:Lcom/android/ims/internal/IImsCallSession;

.field final synthetic val$srcAccessTech:I

.field final synthetic val$targetAccessTech:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iput p3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$srcAccessTech:I

    iput p4, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$targetAccessTech:I

    iput-object p5, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$reasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 176
    :try_start_0
    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    const-string/jumbo v2, "callSessionHandover()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iget v3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$srcAccessTech:I

    iget v4, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$targetAccessTech:I

    .line 178
    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->val$reasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 177
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const-string/jumbo v2, "callSessionHandover()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->-wrap1(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
