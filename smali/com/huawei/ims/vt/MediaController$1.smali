.class Lcom/huawei/ims/vt/MediaController$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/MediaController;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/MediaController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaController$1;->this$0:Lcom/huawei/ims/vt/MediaController;

    .line 233
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 236
    if-nez p1, :cond_0

    .line 237
    invoke-static {}, Lcom/huawei/ims/vt/MediaController;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Call state is IDLE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {v2, v3}, Lcom/huawei/ims/vt/VTUtils;->setPreCallDataUsage(J)V

    .line 240
    invoke-static {v2, v3}, Lcom/huawei/ims/vt/VTUtils;->setTotalCallDataUsage(J)V

    .line 244
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 245
    return-void
.end method
