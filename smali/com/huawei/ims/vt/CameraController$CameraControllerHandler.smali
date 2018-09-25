.class Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;
.super Landroid/os/Handler;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/CameraController;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/CameraController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/CameraController;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;->this$0:Lcom/huawei/ims/vt/CameraController;

    .line 828
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 829
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 833
    const-string/jumbo v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handle message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 842
    :goto_0
    return-void

    .line 836
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsCallSessionImpl;

    .line 837
    .local v0, "session":Lcom/huawei/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraController$CameraControllerHandler;->this$0:Lcom/huawei/ims/vt/CameraController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/vt/CameraController;->open(Ljava/lang/String;Lcom/huawei/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
