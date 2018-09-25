.class public Lcom/huawei/sci/SciUplogCb;
.super Ljava/lang/Object;
.source "SciUplogCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;,
        Lcom/huawei/sci/SciUplogCb$Callback;
    }
.end annotation


# static fields
.field static mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

.field static mCallback:Lcom/huawei/sci/SciUplogCb$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    .line 70
    sput-object v0, Lcom/huawei/sci/SciUplogCb;->mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static setAnalysisCallback(Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    .prologue
    .line 67
    sput-object p0, Lcom/huawei/sci/SciUplogCb;->mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    .line 68
    return-void
.end method

.method public static setCallback(Lcom/huawei/sci/SciUplogCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciUplogCb$Callback;

    .prologue
    .line 44
    sput-object p0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    .line 45
    return-void
.end method

.method public static uplogCbLogErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "strErrorCode"    # Ljava/lang/String;
    .param p1, "strTime"    # Ljava/lang/String;
    .param p2, "strDes"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/sci/SciUplogCb$Callback;->sciUplogCbLogErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 31
    :cond_0
    return-void
.end method

.method public static uplogCbLogFileClosed(Ljava/lang/String;)V
    .locals 1
    .param p0, "LogFileName"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    invoke-interface {v0, p0}, Lcom/huawei/sci/SciUplogCb$Callback;->sciUplogCbUplogFileClosed(Ljava/lang/String;)V

    .line 27
    return-void

    .line 24
    :cond_0
    return-void
.end method

.method public static uplogCbPrintStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "pcEventID"    # Ljava/lang/String;
    .param p1, "pcFirstStaticParam"    # Ljava/lang/String;
    .param p2, "pcSecondStaticParam"    # Ljava/lang/String;
    .param p3, "pcThirdStaticParam"    # Ljava/lang/String;
    .param p4, "isAutoTest"    # Z

    .prologue
    .line 53
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mAnalysisCallback:Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/huawei/sci/SciUplogCb$AnalysisLogCallback;->sciUplogCbPrintStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    return-void

    .line 54
    :cond_0
    return-void
.end method

.method public static uplogCbUplogNotify(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 7
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    invoke-interface {v0, p0}, Lcom/huawei/sci/SciUplogCb$Callback;->sciUplogCbUplogNotify(Ljava/lang/String;)V

    .line 11
    return-void

    .line 8
    :cond_0
    return-void
.end method

.method public static uplogCbUplogResult(I)V
    .locals 1
    .param p0, "result"    # I

    .prologue
    .line 15
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/huawei/sci/SciUplogCb;->mCallback:Lcom/huawei/sci/SciUplogCb$Callback;

    invoke-interface {v0, p0}, Lcom/huawei/sci/SciUplogCb$Callback;->sciUplogCbUplogResult(I)V

    .line 19
    return-void

    .line 16
    :cond_0
    return-void
.end method
