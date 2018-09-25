.class Lcom/huawei/videoengine/VideoCapture2Android$7;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/VideoCapture2Android;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 14

    .prologue
    .line 720
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-nez v0, :cond_4

    .line 724
    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "-l_2_R":Ljava/lang/Object;
    monitor-enter v9

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 729
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 732
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 733
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 763
    :cond_1
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 768
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 770
    :try_start_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 774
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 777
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1100(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 778
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v6

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    .line 777
    invoke-virtual/range {v1 .. v8}, Lcom/huawei/videoengine/VideoCapture2Android;->nDropEncFrame(JIIIII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 781
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 783
    :try_start_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 787
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1100(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v4

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v5

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$000(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/huawei/videoengine/VideoCapture2Android;->nGetRoiCoordinate(JI[IJ)V

    .line 788
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-nez v0, :cond_d

    .line 792
    :goto_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 795
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3502(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 796
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3602(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 798
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-nez v0, :cond_e

    .line 814
    :cond_2
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "encode SF W or H is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 821
    :cond_3
    :goto_3
    return-void

    .line 721
    .end local v9    # "-l_2_R":Ljava/lang/Object;
    :cond_4
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    goto/16 :goto_0

    .line 726
    .restart local v9    # "-l_2_R":Ljava/lang/Object;
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 727
    monitor-exit v9

    return-void

    .line 729
    :catchall_0
    move-exception v10

    .local v10, "-l_3_R":Ljava/lang/Object;
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 733
    .end local v10    # "-l_3_R":Ljava/lang/Object;
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-nez v0, :cond_8

    .line 737
    :goto_4
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 739
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2302(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 740
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2402(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 742
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-nez v0, :cond_9

    .line 760
    :cond_7
    const-string/jumbo v0, "hme_engine_java"

    const-string/jumbo v1, "PreView SF W or H is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 763
    :catchall_1
    move-exception v11

    .local v11, "-l_4_R":Ljava/lang/Object;
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v11

    .line 735
    .end local v11    # "-l_4_R":Ljava/lang/Object;
    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    goto :goto_4

    .line 742
    :cond_9
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 744
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, v2, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v3, v3, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 745
    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2600(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    :goto_5
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 746
    invoke-static {v5}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v5

    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 747
    invoke-static {v6}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v7}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v8, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 748
    invoke-static {v8}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    .line 744
    invoke-static/range {v0 .. v8}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2900(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    .line 749
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 750
    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v1

    .line 749
    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 751
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 752
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v2

    .line 753
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v3

    .line 751
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 755
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 756
    const-string/jumbo v0, "draw done"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 745
    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    .line 772
    :cond_b
    :try_start_7
    monitor-exit v9

    goto/16 :goto_3

    .line 774
    :catchall_2
    move-exception v12

    .local v12, "-l_5_R":Ljava/lang/Object;
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v12

    .line 785
    .end local v12    # "-l_5_R":Ljava/lang/Object;
    :cond_c
    :try_start_8
    monitor-exit v9

    goto/16 :goto_3

    .line 818
    :catchall_3
    move-exception v13

    .local v13, "-l_6_R":Ljava/lang/Object;
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v13

    .line 789
    .end local v13    # "-l_6_R":Ljava/lang/Object;
    :cond_d
    :try_start_9
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    goto/16 :goto_2

    .line 798
    :cond_e
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, v2, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v3, v3, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 801
    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v5

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 802
    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-result-object v6

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    .line 800
    const/4 v4, 0x1

    invoke-static/range {v0 .. v8}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2900(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    .line 803
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 804
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 805
    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v3

    .line 803
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 806
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 807
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v2

    .line 808
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v3

    .line 806
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 809
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$7;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 810
    const-string/jumbo v0, "draw done"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 818
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_3
.end method
