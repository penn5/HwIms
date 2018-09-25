.class Lcom/huawei/vtproxy/ImsThinClient$4;
.super Ljava/lang/Object;
.source "ImsThinClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field isResult:Z

.field path:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isResult:Z

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$300()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    .line 264
    iget-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    if-nez v0, :cond_2

    .line 275
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "ERROR createHmeLogFolder getExternalFilesDir is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "ERROR createHmeLogFolder mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 266
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createHmeLogFolder filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VTPROXY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogPath(Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isResult:Z

    .line 268
    iget-boolean v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isResult:Z

    if-eqz v0, :cond_0

    .line 270
    const-string/jumbo v0, "VTPROXY"

    const-string/jumbo v1, "createHmeLogFolder createHmeLogPath OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
