.class Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$2;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;-><init>(Lcom/huawei/ims/ImsCallSessionImpl;Lcom/huawei/ims/ImsCallModification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$2;->this$0:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$2;->this$0:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v0, p1}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->-wrap0(Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
