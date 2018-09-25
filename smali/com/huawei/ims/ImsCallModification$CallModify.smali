.class public Lcom/huawei/ims/ImsCallModification$CallModify;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallModify"
.end annotation


# static fields
.field public static final E_CANCELLED:I = 0x7

.field public static final E_SUCCESS:I = 0x0

.field public static final E_UNUSED:I = 0x10

.field public static final R_REMOTE:I = 0x0

.field public static final R_RTCP_TIMEOUT:I = 0x2

.field public static final R_RTP_AND_RTCP_TIMEOUT:I = 0x3

.field public static final R_RTP_TIMEOUT:I = 0x1


# instance fields
.field public call_index:I

.field public curr_call_details:Lcom/huawei/ims/CallDetails;

.field public dest_call_details:Lcom/huawei/ims/CallDetails;

.field public error:I

.field public modify_reason:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 608
    new-instance v0, Lcom/huawei/ims/CallDetails;

    invoke-direct {v0}, Lcom/huawei/ims/CallDetails;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;I)V

    .line 609
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;I)V
    .locals 1
    .param p1, "callDetails"    # Lcom/huawei/ims/CallDetails;
    .param p2, "callIndex"    # I

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;II)V

    .line 613
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;I)V
    .locals 1
    .param p1, "currCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p2, "destCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p3, "callIndex"    # I

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/huawei/ims/ImsCallModification$CallModify;-><init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;II)V

    .line 618
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;II)V
    .locals 0
    .param p1, "currCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p2, "destCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p3, "callIndex"    # I
    .param p4, "err"    # I

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    .line 622
    iput-object p2, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    .line 623
    iput p3, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    .line 624
    iput p4, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    .line 625
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/CallDetails;Lcom/huawei/ims/CallDetails;III)V
    .locals 0
    .param p1, "currCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p2, "destCallDetails"    # Lcom/huawei/ims/CallDetails;
    .param p3, "callIndex"    # I
    .param p4, "err"    # I
    .param p5, "reason"    # I

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    .line 629
    iput-object p2, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    .line 630
    iput p3, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    .line 631
    iput p4, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    .line 632
    iput p5, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    .line 633
    return-void
.end method


# virtual methods
.method public findError()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 640
    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSameModify(Lcom/huawei/ims/ImsCallModification$CallModify;)Z
    .locals 3
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallModification$CallModify;

    .prologue
    const/4 v0, 0x0

    .line 660
    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    iget v2, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    if-ne v1, v2, :cond_0

    .line 661
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_type:I

    if-ne v1, v2, :cond_0

    .line 662
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v1, v1, Lcom/huawei/ims/CallDetails;->call_domain:I

    iget-object v2, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    iget v2, v2, Lcom/huawei/ims/CallDetails;->call_domain:I

    if-ne v1, v2, :cond_0

    .line 663
    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    iget v2, p1, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 660
    :cond_0
    return v0
.end method

.method public modifyByTimeOut()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 645
    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    if-eq v1, v0, :cond_0

    .line 646
    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 647
    :cond_1
    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallDetails(Lcom/huawei/ims/CallDetails;)V
    .locals 1
    .param p1, "calldetails"    # Lcom/huawei/ims/CallDetails;

    .prologue
    .line 636
    new-instance v0, Lcom/huawei/ims/CallDetails;

    invoke-direct {v0, p1}, Lcom/huawei/ims/CallDetails;-><init>(Lcom/huawei/ims/CallDetails;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    .line 637
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->call_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 654
    const-string/jumbo v1, " "

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->curr_call_details:Lcom/huawei/ims/CallDetails;

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 655
    const-string/jumbo v1, " "

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->dest_call_details:Lcom/huawei/ims/CallDetails;

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 656
    const-string/jumbo v1, " "

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 656
    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->error:I

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 657
    const-string/jumbo v1, " "

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 657
    iget v1, p0, Lcom/huawei/ims/ImsCallModification$CallModify;->modify_reason:I

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
