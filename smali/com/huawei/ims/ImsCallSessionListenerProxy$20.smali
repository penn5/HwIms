.class Lcom/huawei/ims/ImsCallSessionListenerProxy$20;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsCallSessionListenerProxy;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;->this$0:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->-wrap0(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V

    .line 523
    return-void
.end method
