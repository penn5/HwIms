.class Lcom/huawei/ims/HwImsUtImpl$2;
.super Ljava/lang/Object;
.source "HwImsUtImpl.java"

# interfaces
.implements Lcom/huawei/sci/SciSSConfCb$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    .line 4565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public sciBsfCbPostResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rand"    # Ljava/lang/String;
    .param p2, "autn"    # Ljava/lang/String;

    .prologue
    .line 4578
    return-void
.end method

.method public sciSSConfCbPostResult(III)V
    .locals 4
    .param p1, "ssType"    # I
    .param p2, "opType"    # I
    .param p3, "status"    # I

    .prologue
    .line 4568
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sciSSConfCbPostResult ssType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", opType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->-wrap13(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 4570
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UTData;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 4572
    .local v0, "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 4573
    return-void
.end method
