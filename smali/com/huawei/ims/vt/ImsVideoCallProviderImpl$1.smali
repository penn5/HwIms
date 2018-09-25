.class Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$1;
.super Ljava/lang/Object;
.source "ImsVideoCallProviderImpl.java"

# interfaces
.implements Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;
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
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getCurrentDynamicRes(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 85
    const-string/jumbo v0, "ImsVideoCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video dimension change CallBack,width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",height ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/ImsVideoCallProviderImpl;->changePeerDimensions(II)V

    .line 87
    return-void
.end method
