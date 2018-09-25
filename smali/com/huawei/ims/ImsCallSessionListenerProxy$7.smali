.class Lcom/huawei/ims/ImsCallSessionListenerProxy$7;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field final synthetic val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field final synthetic val$session:Lcom/android/ims/internal/IImsCallSession;

.field final synthetic val$srcAccessTech:I

.field final synthetic val$targetAccessTech:I


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iput p3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->val$srcAccessTech:I

    iput p4, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->val$targetAccessTech:I

    iput-object p5, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 198
    :try_start_0
    const-string/jumbo v1, "ImsCallSessionListenerProxy"

    const-string/jumbo v2, "callSessionHandoverFailed()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->val$session:Lcom/android/ims/internal/IImsCallSession;

    iget v3, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->val$srcAccessTech:I

    .line 200
    iget v4, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->val$targetAccessTech:I

    iget-object v5, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->val$reasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 199
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const-string/jumbo v2, "callSessionHandoverFailed()"

    invoke-static {v1, v0, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->-wrap1(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
