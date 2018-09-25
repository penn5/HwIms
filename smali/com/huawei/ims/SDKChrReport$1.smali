.class Lcom/huawei/ims/SDKChrReport$1;
.super Ljava/lang/Object;
.source "SDKChrReport.java"

# interfaces
.implements Lcom/huawei/vtproxy/ImsThinClient$ChrHmeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/SDKChrReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/SDKChrReport;


# direct methods
.method constructor <init>(Lcom/huawei/ims/SDKChrReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/SDKChrReport;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/SDKChrReport$1;->this$0:Lcom/huawei/ims/SDKChrReport;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public chrHmeCbGetErrReport([I)V
    .locals 3
    .param p1, "iCHRPara"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 153
    const/4 v0, 0x2

    aput v0, p1, v1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/SDKChrReport$1;->this$0:Lcom/huawei/ims/SDKChrReport;

    invoke-static {v0, p1, v2}, Lcom/huawei/ims/SDKChrReport;->-wrap0(Lcom/huawei/ims/SDKChrReport;[I[Ljava/lang/String;)V

    .line 156
    return-void
.end method
