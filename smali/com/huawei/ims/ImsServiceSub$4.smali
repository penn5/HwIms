.class Lcom/huawei/ims/ImsServiceSub$4;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/ImsServiceSub;->bindMapconService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsServiceSub;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceSub$4;->this$0:Lcom/huawei/ims/ImsServiceSub;

    .line 2580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$4;->this$0:Lcom/huawei/ims/ImsServiceSub;

    invoke-static {p2}, Lcom/hisi/mapcon/IMapconService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-set6(Lcom/huawei/ims/ImsServiceSub;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;

    .line 2584
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceSub$4;->this$0:Lcom/huawei/ims/ImsServiceSub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsServiceSub;->-set6(Lcom/huawei/ims/ImsServiceSub;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;

    .line 2589
    return-void
.end method
