.class public Lcom/huawei/videoengine/ViERenderer;
.super Ljava/lang/Object;
.source "ViERenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/ViERenderer$ListenThread;
    }
.end annotation


# static fields
.field private static final MAXNUM:I = 0x10

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static g_localRender:Landroid/view/SurfaceView;

.field private static g_localRenderer:Landroid/view/SurfaceHolder;

.field private static g_remoteRender:[Landroid/view/SurfaceView;

.field private static listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

.field private static renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static saveLogcat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 36
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/view/SurfaceView;

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 3

    .prologue
    .line 185
    new-instance v1, Lcom/huawei/videoengine/ViERenderer$ListenThread;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/ViERenderer$ListenThread;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/videoengine/ViERenderer;->listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

    .line 186
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

    invoke-virtual {v1}, Lcom/huawei/videoengine/ViERenderer$ListenThread;->start()V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Phone model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hme-video"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "ViERenderer.java! createLocalRenderer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "-l_1_R":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    sput-object v1, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 192
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 194
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 196
    invoke-static {v0}, Lcom/huawei/videoengine/ViERenderer;->setLocalRenderInfo(Landroid/view/SurfaceView;)V

    .line 198
    return-object v0
.end method

.method public static createRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/videoengine/ViERenderer;->createRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method public static createRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "ViERenderer.java! createRenderer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eq p1, v4, :cond_1

    .line 64
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "-l_2_R":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 68
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 90
    return-object v0

    .line 61
    .end local v0    # "-l_2_R":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Lcom/huawei/videoengine/ViEAndroidGLES20;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;-><init>(Landroid/content/Context;)V

    .restart local v0    # "-l_2_R":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static freeLocalRenderResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "enter ViERenderer.java! freeLocalRenderResource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    sput-object v2, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 240
    sput-object v2, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 241
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v0, :cond_1

    .line 245
    :goto_1
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

    invoke-virtual {v0}, Lcom/huawei/videoengine/ViERenderer$ListenThread;->stop1()V

    .line 246
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "leave ViERenderer.java! freeLocalRenderResource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-nez v0, :cond_2

    .line 251
    :goto_2
    return-void

    .line 237
    :cond_0
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto :goto_0

    .line 243
    :cond_1
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 249
    :cond_2
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->stopLogcatManager()V

    goto :goto_2
.end method

.method public static getIndexOfSurface(Landroid/view/SurfaceView;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 97
    if-eqz p0, :cond_0

    .line 106
    const/4 v0, 0x1

    .local v0, "-l_1_I":I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 128
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "Can\'t find the equal render!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v3

    .line 99
    .end local v0    # "-l_1_I":I
    :cond_0
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "The input render is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v3

    .line 108
    .restart local v0    # "-l_1_I":I
    :cond_1
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 113
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v1, v1, v0

    if-eq v1, p0, :cond_3

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aput-object p0, v1, v0

    .line 111
    return v0

    .line 115
    :cond_3
    return v0
.end method

.method public static getLocalRenderer()Landroid/view/SurfaceHolder;
    .locals 2

    .prologue
    .line 257
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "ViERenderer.java! getLocalRenderer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public static getSurfaceFromIndex(I)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    const/4 v0, 0x1

    if-le v0, p0, :cond_1

    .line 136
    :cond_0
    return-object v2

    .line 134
    :cond_1
    const/16 v0, 0x10

    if-le v0, p0, :cond_0

    .line 138
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v0, v0, p0

    if-nez v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "The Render of index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v2

    .line 140
    :cond_2
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static isAppOnForeground2(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "-l_1_R":Ljava/lang/Object;
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 282
    .local v1, "-l_2_R":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 283
    .local v2, "-l_3_R":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 284
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "-l_4_R":Ljava/lang/Object;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 290
    return v7

    .line 283
    .end local v3    # "-l_4_R":Ljava/lang/Object;
    :cond_1
    return v7

    .line 284
    .restart local v3    # "-l_4_R":Ljava/lang/Object;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 285
    .local v4, "-l_5_R":Ljava/lang/Object;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 287
    const/4 v5, 0x1

    return v5
.end method

.method public static reSetLocalRender()V
    .locals 3

    .prologue
    .line 220
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "enter ViERenderer.java! reSetLocalRender"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 223
    :try_start_0
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    invoke-static {v1}, Lcom/huawei/videoengine/ViERenderer;->setLocalRenderInfo(Landroid/view/SurfaceView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 227
    const-string/jumbo v1, "hme-video"

    const-string/jumbo v2, "leave ViERenderer.java! reSetLocalRender"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 225
    :catchall_0
    move-exception v0

    .local v0, "-l_0_R":Ljava/lang/Object;
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static setLocalRenderInfo(Landroid/view/SurfaceView;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "enter ViERenderer.java! setLocalRenderInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 208
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 209
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    .line 210
    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 211
    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 213
    const-string/jumbo v0, "hme-video"

    const-string/jumbo v1, "leave ViERenderer.java! setLocalRenderInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public static setSurfaceNull(Landroid/view/SurfaceView;)V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x1

    .local v0, "-l_1_I":I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 160
    return-void

    .line 154
    :cond_0
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v1, v1, v0

    if-eq p0, v1, :cond_1

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 157
    return-void
.end method

.method public static setSurfaceNullFromIndex(I)V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x1

    if-le v0, p0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/16 v0, 0x10

    if-le v0, p0, :cond_0

    .line 166
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    goto :goto_0
.end method

.method private static startLogcatManager()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public static startLogcattoFile()V
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->startLogcatManager()V

    .line 266
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    goto :goto_0
.end method

.method private static stopLogcatManager()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public static stopLogcattoFile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->stopLogcatManager()V

    .line 274
    sput-boolean v1, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    goto :goto_0
.end method
