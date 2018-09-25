.class Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;
.super Landroid/os/Handler;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsConfigImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsConfigImpl;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/ImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsConfigImpl;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
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

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->-wrap1(Ljava/lang/String;)V

    .line 135
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 137
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 148
    const-string/jumbo v1, "handleMessage: unhandled message"

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->-wrap2(Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    iget-object v2, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->-wrap0(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->-wrap3(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    iget-object v2, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->-wrap0(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->-wrap5(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v1, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    iget-object v2, p0, Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;->this$0:Lcom/huawei/ims/ImsConfigImpl;

    invoke-static {v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->-wrap0(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/ims/ImsConfigImpl;->-wrap4(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
