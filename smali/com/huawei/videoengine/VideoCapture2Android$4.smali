.class Lcom/huawei/videoengine/VideoCapture2Android$4;
.super Landroid/os/Handler;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;->startBackgroundThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/VideoCapture2Android;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 311
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;

    .line 314
    .local v0, "-l_2_R":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->getViewSf()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->getEncSf()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->getHeigth()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/huawei/videoengine/VideoCapture2Android;->backInitEGl(Landroid/view/Surface;Landroid/view/Surface;II)I

    goto :goto_0

    .line 317
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$402(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 318
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$602(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    goto :goto_0

    .line 321
    :pswitch_2
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v1, v3, v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1300(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;II)V

    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-static {v2, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1400(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;)V

    goto :goto_0

    .line 327
    :pswitch_4
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
